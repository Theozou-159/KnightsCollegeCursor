[CmdletBinding()]
param(
  [switch]$Apply
)

$ErrorActionPreference = "Stop"

$SchemeName = "Diderich Cursor"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceDir = Join-Path $ScriptDir "cursors"
$TargetDir = Join-Path $env:LOCALAPPDATA "DiderichCursor\Cursors"
$BackupDir = Join-Path $env:LOCALAPPDATA "KnightsCollegeCursor\CursorSchemeBackups"

$CursorReg = "HKCU:\Control Panel\Cursors"
$SchemeSubKey = "Control Panel\Cursors\Schemes"

if (!(Test-Path $SourceDir)) {
  throw "Cannot find cursor source folder: $SourceDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
New-Item -ItemType Directory -Force -Path $BackupDir | Out-Null
Copy-Item -Path (Join-Path $SourceDir "*") -Destination $TargetDir -Force

function Export-RegistryBackup($keyPath, $fileName) {
  $filePath = Join-Path $BackupDir $fileName
  try {
    & reg.exe export $keyPath $filePath /y | Out-Null
    if ($LASTEXITCODE -eq 0) {
      return $filePath
    }
  } catch {
  }

  Write-Warning "Could not export backup for $keyPath"
  return $null
}

function Get-RegistryValueSnapshot($subKey) {
  $snapshot = [ordered]@{}
  $key = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey($subKey, $false)
  if ($null -eq $key) {
    return $snapshot
  }

  foreach ($name in $key.GetValueNames()) {
    $snapshot[$name] = [pscustomobject]@{
      Value = $key.GetValue($name, "", [Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames)
      Kind = $key.GetValueKind($name)
    }
  }

  $key.Close()
  return $snapshot
}

function Restore-RegistryValueSnapshot($subKey, $snapshot) {
  $key = [Microsoft.Win32.Registry]::CurrentUser.CreateSubKey($subKey)
  foreach ($name in $snapshot.Keys) {
    $entry = $snapshot[$name]
    $key.SetValue($name, $entry.Value, $entry.Kind)
  }
  $key.Close()
}

function C($name) {
  return (Join-Path $TargetDir $name)
}

$Stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$SchemesBackup = Export-RegistryBackup "HKCU\Control Panel\Cursors\Schemes" "schemes-$Stamp.reg"
$CurrentBackup = Export-RegistryBackup "HKCU\Control Panel\Cursors" "current-cursors-$Stamp.reg"
$ExistingSchemes = Get-RegistryValueSnapshot $SchemeSubKey

$Map = [ordered]@{
  Arrow       = C "pointer.ani"
  Help        = C "help.ani"
  AppStarting = C "work.ani"
  Wait        = C "busy.ani"
  Crosshair   = C "cross.ani"
  IBeam       = C "text.ani"
  NWPen       = C "pointer.cur"
  No          = C "unavailable.ani"
  SizeNS      = C "vert.ani"
  SizeWE      = C "horz.ani"
  SizeNWSE    = C "dgn1.ani"
  SizeNESW    = C "dgn2.ani"
  SizeAll     = C "move.ani"
  UpArrow     = C "pointer.cur"
  Hand        = C "link.ani"
  Pin         = C "pointer.cur"
  Person      = C "pointer.cur"
}

$SchemeOrder = @(
  "Arrow", "Help", "AppStarting", "Wait", "Crosshair", "IBeam", "NWPen",
  "No", "SizeNS", "SizeWE", "SizeNWSE", "SizeNESW", "SizeAll", "UpArrow",
  "Hand"
)
$SchemeValue = ($SchemeOrder | ForEach-Object { $Map[$_] }) -join ","

Restore-RegistryValueSnapshot $SchemeSubKey $ExistingSchemes
$SchemeKey = [Microsoft.Win32.Registry]::CurrentUser.CreateSubKey($SchemeSubKey)
$SchemeKey.SetValue($SchemeName, $SchemeValue, [Microsoft.Win32.RegistryValueKind]::String)
$SchemeKey.Close()

if ($Apply) {
  foreach ($entry in $Map.GetEnumerator()) {
    Set-ItemProperty -Path $CursorReg -Name $entry.Key -Value $entry.Value
  }

  try {
    $CursorKey = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey("Control Panel\Cursors", $true)
    if ($null -ne $CursorKey) {
      $CursorKey.SetValue("", $SchemeName, [Microsoft.Win32.RegistryValueKind]::String)
      $CursorKey.Close()
    }
  } catch {
    Write-Warning "The Diderich cursor files were applied, but Windows did not allow the scheme name to be set automatically."
  }

  $NativeSource = @"
using System;
using System.Runtime.InteropServices;
public static class DiderichCursorNative {
  [DllImport("user32.dll", SetLastError=true)]
  public static extern bool SystemParametersInfo(uint uiAction, uint uiParam, IntPtr pvParam, uint fWinIni);
}
"@
  Add-Type -TypeDefinition $NativeSource -ErrorAction SilentlyContinue
  [DiderichCursorNative]::SystemParametersInfo(0x0057, 0, [IntPtr]::Zero, 0x03) | Out-Null

  Restore-RegistryValueSnapshot $SchemeSubKey $ExistingSchemes
  $SchemeKey = [Microsoft.Win32.Registry]::CurrentUser.CreateSubKey($SchemeSubKey)
  $SchemeKey.SetValue($SchemeName, $SchemeValue, [Microsoft.Win32.RegistryValueKind]::String)
  $SchemeKey.Close()
}

Write-Host ""
if ($Apply) {
  Write-Host "Diderich Cursor has been installed and applied." -ForegroundColor Green
} else {
  Write-Host "Diderich Cursor has been installed." -ForegroundColor Green
  Write-Host "Your current cursor scheme was not changed." -ForegroundColor Yellow
  Write-Host "To switch later: Mouse Properties -> Pointers -> Scheme -> Diderich Cursor."
  try {
    Start-Process control.exe "main.cpl,,1"
  } catch {
    Write-Host "Open Mouse Properties manually if the Pointers tab did not open."
  }
}
Write-Host "Installed to: $TargetDir"
if ($SchemesBackup) {
  Write-Host "Scheme backup: $SchemesBackup"
}
if ($CurrentBackup) {
  Write-Host "Current cursor backup: $CurrentBackup"
}
Write-Host ""

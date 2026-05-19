$ErrorActionPreference = "Stop"

$SchemeName = "Theo Cursor Image2"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceDir = Join-Path $ScriptDir "cursors"
$TargetDir = Join-Path $env:LOCALAPPDATA "TheoCursorImage2\Cursors"

if (!(Test-Path $SourceDir)) {
  throw "Cannot find cursor source folder: $SourceDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -Path (Join-Path $SourceDir "*") -Destination $TargetDir -Force

$CursorReg = "HKCU:\Control Panel\Cursors"
$SchemeReg = "HKCU:\Control Panel\Cursors\Schemes"
New-Item -Path $SchemeReg -Force | Out-Null

function C($name) {
  return (Join-Path $TargetDir $name)
}

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

foreach ($entry in $Map.GetEnumerator()) {
  Set-ItemProperty -Path $CursorReg -Name $entry.Key -Value $entry.Value
}

$SchemeOrder = @(
  "Arrow", "Help", "AppStarting", "Wait", "Crosshair", "IBeam", "NWPen",
  "No", "SizeNS", "SizeWE", "SizeNWSE", "SizeNESW", "SizeAll", "UpArrow",
  "Hand"
)
$SchemeValue = ($SchemeOrder | ForEach-Object { $Map[$_] }) -join ","
New-ItemProperty -Path $SchemeReg -Name $SchemeName -Value $SchemeValue -PropertyType String -Force | Out-Null
(Get-Item $CursorReg).SetValue("", $SchemeName)

$NativeSource = @"
using System;
using System.Runtime.InteropServices;
public static class TheoCursorNative {
  [DllImport("user32.dll", SetLastError=true)]
  public static extern bool SystemParametersInfo(uint uiAction, uint uiParam, IntPtr pvParam, uint fWinIni);
}
"@
Add-Type -TypeDefinition $NativeSource -ErrorAction SilentlyContinue
[TheoCursorNative]::SystemParametersInfo(0x0057, 0, [IntPtr]::Zero, 0x03) | Out-Null

Write-Host ""
Write-Host "Theo Cursor Image2 has been installed and applied." -ForegroundColor Green
Write-Host "Installed to: $TargetDir"
Write-Host ""

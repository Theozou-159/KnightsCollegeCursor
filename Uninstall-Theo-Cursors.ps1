$ErrorActionPreference = "Stop"
$SchemeName = "Theo Cursor"
$SchemeReg = "HKCU:\Control Panel\Cursors\Schemes"
$TargetRoot = Join-Path $env:LOCALAPPDATA "TheoCursor"
Remove-ItemProperty -Path $SchemeReg -Name $SchemeName -ErrorAction SilentlyContinue
Write-Host "Removed the saved Theo cursor scheme entry." -ForegroundColor Yellow
Write-Host "Cursor files are kept at $TargetRoot in case the scheme is still active."
Write-Host "Open Mouse Properties and choose another pointer scheme before deleting that folder."
control.exe main.cpl

$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
$testadmin = $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
if ($testadmin -eq $false) {
  $curFile = $MyInvocation.MyCommand.Definition
  Start-Process powershell.exe -verb runas -ArgumentList "$curFile"   
  return
}

Set-Location $PSScriptRoot
vagrant up
vagrant ssh

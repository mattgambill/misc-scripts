$read = Read-Host "Enter File Name (example.ps1)"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Get-ExecutionPolicy
Unblock-File -Path "$read"
Get-ExecutionPolicy

Write-Host '-----------Get Services-----------'


$get = Read-Host 'What service status do you wanna check? '

$status = Get-Service $get

if ($status.Status -eq 'Running'){
    Write-Host 'Running'
    $restart = Read-Host 'Do you want to Stop service? y/n '
    $restart.ToUpper()
    if ($restart -eq 'Y') {
        Get-Service $get | Stop-Service
    }elseif ($restart -eq 'N') {
        Write-Host ''
    }

}elseif ($status.Status -ne 'Running') {
    Write-Host 'Stopped'
    $restart = Read-Host 'Do you want to start service? y/n '
    $restart.ToUpper()
    if ($restart -eq 'Y') {
        Get-Service $get | Start-Service
    }elseif ($restart -eq 'N') {
        Write-Host ''
    }
}

Get-Service $get




#Wuauserv
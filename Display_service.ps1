Write-Host '-------Display services that include a search string-------'
$service = Read-Host 'Input String You want to search '
$serv = '*'+$service + '*'
Get-Service -Displayname $serv
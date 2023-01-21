Write-Host '-------------Restart a target machine----------------'
$computer_name = Read-Host 'Enter Computer Name '
$confirm = Read-Host 'Are you sure you want to Restart? y/n '
$confirm.ToUpper()

if ($confirm -eq 'Y'){
        Restart-Computer -ComputerName $computer_name -Force
}else{
        Write-Host 'The Machine Did not Restart'
}




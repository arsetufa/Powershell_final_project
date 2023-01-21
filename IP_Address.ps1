Write-Host "-----------Ping IP Address---------------"

$out_put = Read-Host 'A: Display Output on the Screen or B: Put it in Text file '
$out_put.ToUpper()
if ($out_put -eq 'A'){
    $Ping = Read-Host 'Ping A: one IP address or B: Range of IP Addresses '
    $Ping.ToUpper()
    if ($Ping -eq 'A') {
        $ip = Read-Host 'Enter The IP Address '
        Write-Host $ip
        Test-Connection -ComputerName $ip -count 1 -Quiet -ErrorAction stop
    }
    elseif($Ping -eq 'B'){
        $ip1 = '10.30.187.'
        [int]$ip_start = Read-Host 'Enter the last digit of start range '

        [int]$ip_end = Read-Host 'Enter the last digit of end range '

        while ($ip_start -le $ip_end){
            $ip = $ip1 + $ip_start.ToString()
            Write-Host $ip
            Test-Connection -ComputerName $ip -count 1 -Quiet -ErrorAction stop
            $ip_start ++
        }
    }
    else{
        Write-Host "Invalid Option"
    }

}

elseif($out_put -eq 'B'){
    $Ping = Read-Host 'Ping A: one IP address or B: Range of IP Addresses '
    $Ping.ToUpper()
    if ($Ping -eq 'A') {
        $ip = Read-Host 'Enter The IP Address '
        $ip | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_IP.txt" -Append
        Test-Connection -ComputerName $ip -count 1 -Quiet -ErrorAction stop | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_IP.txt" -Append
    }
    elseif($Ping -eq 'B'){
        $ip1 = '10.30.187.'
        [int]$ip_start = Read-Host 'Enter the last digit of start range '

        [int]$ip_end = Read-Host 'Enter the last digit of end range '

        while ($ip_start -le $ip_end){
            $ip = $ip1 + $ip_start.ToString()
            $ip | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_IP.txt" -Append
            Test-Connection -ComputerName $ip -count 1 -Quiet -ErrorAction stop | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_IP.txt" -Append
            $ip_start ++
        }
    }
    else{
        Write-Host "Invalid Option"
    }

}

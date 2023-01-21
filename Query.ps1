$repeat = 'T'
while ($repeat -eq 'T') {
    Write-Host '---------------- Menu Option: ----------------'
    Write-Host '---------------- Get Information----------------'
    Write-Host 'A: Computer manufacturer and model'
    Write-Host 'B: Processor information'
    Write-Host 'C: Available disk space'
    Write-Host 'D: The user currently logged in on the computer'
    $answ = Read-Host 
    $answ.ToUpper()

    $out_put = Read-Host 'A: Display Output on the Screen or B: Put it in Text file '
    $out_put.ToUpper()

    if ($out_put -eq 'A') {
        if ($answ -eq 'A') {
            Get-CimInstance -ClassName Win32_ComputerSystem
        }
        elseif ($answ -eq 'B') {
            Get-CimInstance -ClassName Win32_Processor | Select-Object -ExcludeProperty "CIM*"
        }
        elseif ($answ -eq 'C') {
            Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"
        }
        elseif ($answ -eq 'D') {
            Get-CimInstance -ClassName Win32_ComputerSystem -Property UserName
        }
        else {
            Write-Host 'Invalid Option'
        }
    
        $rep = Read-Host '1: Get more Information y/n'
        $rep.ToUpper()
            if ($rep -eq 'Y') {
                $repeat = 'T'
            }
            elseif ($rep -eq 'N') {
                $repeat = 'F'
            }
    }
    elseif ($out_put -eq 'B') {
        if ($answ -eq 'A') {
            Get-CimInstance -ClassName Win32_ComputerSystem | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_Query.txt" -Append
        }
        elseif ($answ -eq 'B') {
            Get-CimInstance -ClassName Win32_Processor | Select-Object -ExcludeProperty "CIM*" | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_Query.txt" -Append
        }
        elseif ($answ -eq 'C') {
            Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_Query.txt" -Append
        }
        elseif ($answ -eq 'D') {
            Get-CimInstance -ClassName Win32_ComputerSystem -Property UserName | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Out_put_Query.txt" -Append
        }
        else {
            Write-Host 'Invalid Option'
        }
    
        $rep = Read-Host '1: Get more Information y/n'
        $rep.ToUpper()
            if ($rep -eq 'Y') {
                $repeat = 'T'
            }
            elseif ($rep -eq 'N') {
                $repeat = 'F'
            }
    }
    

}
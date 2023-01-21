#  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$repeat = 'T'
while ($repeat -eq 'T') {
    Write-Host '---------------- Menu Option: ----------------'
    Write-Host 'A: Create an Active Directory user account'
    Write-Host 'B: Create an Active Directory accounts in bulk from a CSV file'
    Write-Host 'C: Ping IP Address'
    Write-Host 'D: Scann or Search of a text file'
    Write-Host 'E: Query a specific Machine'
    Write-Host 'F: Restart target machine'
    Write-Host 'G: Check Status ' 
    Write-Host 'H: Display services that include a search string '
    Write-Host 'I: Install Google Chrome '
    Write-Host 'J: Get-Date '
    Write-Host 'K: Set up Count Down '
    $answ = Read-Host 
    $answ.ToUpper()
    if ($answ -eq 'A') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\New_User_Account.ps1
    }
    elseif ($answ -eq 'B') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\New_User.ps1
    }
    elseif ($answ -eq 'C') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\IP_Address.ps1
    }
    elseif ($answ -eq 'D') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\Searching_txt.ps1
    }
    elseif ($answ -eq 'E') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\Query.ps1
    }
    elseif ($answ -eq 'F') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\Remotely_start.ps1
    }
    elseif ($answ -eq 'G') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\Check_status.ps1
    }
    elseif ($answ -eq 'H') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\Display_service.ps1
    }
    elseif ($answ -eq 'I') {
        Winget install Google.Chrome
    }
    elseif ($answ -eq 'J') {
        Get-Date
    }
    elseif ($answ -eq 'K') {
        C:\Users\17635\OneDrive\Desktop\Final_Project\timer.ps1
    }
    else{
        Write-Host "Invalid Option"
    }

    $rep = Read-Host '1: Go Back to Menu Option or 2: Exit'
        if ($rep -eq 1) {
            $repeat = 'T'
        }
        elseif ($rep -eq 2) {
            $repeat = 'F'
        }
}

Write-Host 'GOOD BYE!'
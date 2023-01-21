Write-Host 'Make Sure To Update All the rows in "New_User_List.csv" to Successfully Create All Users'
Read-Host 'Press Enter to Start Creating User from "New_User_List.csv"'
$Users = Import-Csv -Path "C:\Users\17635\OneDrive\Desktop\Final_Project\New_User_List.csv"            
foreach ($User in $Users)            
{            
    $Name = $User.FirstName + " " + $User.LastName          
    $Givenname = $User.FirstName           
    $Surname = $User.LastName                      
    $SAM = $User.SAM            
    $UPN = $User.FirstName+ $User.LastName + '@arsetufa.lan'                      
    $Password = $User.Password            
    New-ADUser -Name "$Name" -GivenName "$Givenname" -Surname "$Surname" -SamAccountName "$SAM" -UserPrincipalName "$UPN" -AccountPassword(ConvertTo-SecureString "$Password" -AsPlainText -Force) -enabled $ture

}

Write-host "User's Successfully Created"
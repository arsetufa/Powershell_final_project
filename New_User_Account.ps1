Write-Host '---------CREATE A NEW USER-------------'
$FirstName = Read-Host 'Enter Your First Name '
$LastName = Read-Host 'Enter Your Last Name '
$SAM = Read-Host 'Enter SamAccountName '
$Password = Read-Host 'Enter PassWord '

$Name = $FirstName + " " + $LastName          
$Givenname = $FirstName           
$Surname = $LastName                      
$SAM = $SAM            
$UPN = $FirstName+ $LastName + '@arsetufa.lan'                      
$Password = $Password            
New-ADUser -Name "$Name" -GivenName "$Givenname" -Surname "$Surname" -SamAccountName "$SAM" -UserPrincipalName "$UPN" -AccountPassword(ConvertTo-SecureString "$Password" -AsPlainText -Force) -enabled $ture

Write-host "User Successfully Created"
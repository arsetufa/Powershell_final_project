$Url = "https://www.plexonline.com"; 
$Username="xxxx";
$Password="xxxx";
$CompanyCode="xxx";

$IE = New-Object -ComObject internetexplorer.application;

$IE.FullScreen = $true;

$IE.Visible = $true;

$IE.navigate($url); 

while ($IE.Busy -eq $true) 
    { 
        Start-Sleep -Milliseconds 500; 
    } 

$IE.Document.getElementById("txtUserID").value = $Username;
$IE.Document.getElementByID("txtPassword").value = $Password;
$IE.Document.getElementByID("txtCompanyCode").value = $CompanyCode;
$IE.Document.getElementById("btnLogin_Label").Click();
while ($IE.Busy -eq $true) 
{ 
Start-Sleep -Milliseconds 2000; 
}   
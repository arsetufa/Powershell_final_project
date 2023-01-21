Write-Host '---------Set Up a Count Down--------'

[int]$Time = Read-Host 'Enter Length in Second '
$Lenght = $Time / 100
For ($Time; $Time -gt 0; $Time--) {
$min = [int](([string]($Time/60)).split('.')[0])
$text = " " + $min + " minutes " + ($Time % 60) + " seconds left"
Write-Progress -Activity "Watiting for..." -Status $Text -PercentComplete ($Time / $Lenght)
Start-Sleep 1
}
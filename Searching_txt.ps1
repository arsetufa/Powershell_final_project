Write-Host '------------Search Text from "Search_sample.csv"---------------'

$search = Read-Host 'Enter What You want to search '
$data = Import-Csv -Path "C:\Users\17635\OneDrive\Desktop\Final_Project\Search_sample.csv" 

$out_put = Read-Host 'A: Display Output on the Screen or B: Put it in Text file '
$out_put.ToUpper()
if ($out_put -eq 'A'){
    foreach ($row in $data) {
        if ($row -like '*'+$search+'*') {
            $row
        }
    }
}elseif($out_put -eq 'B'){
    foreach ($row in $data) {
        if ($row -like '*'+$search+'*') {
            $row | Out-File -filepath "C:\Users\17635\OneDrive\Desktop\Final_Project\Search_result.txt" -Append
        }
    }
}

# 10.30.187.58
# $again = Read-Host 'Do you want to search again? y/n'

# $again.ToUpper()

# if ($again -eq 'Y') {
#     C:\Users\17635\OneDrive\Desktop\Final_Project\Searching_txt.ps1
# }
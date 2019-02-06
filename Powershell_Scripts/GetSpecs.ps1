
$myPath = "C:\Data\PowerShell\Info\ShortTermStay.txt"

Clear-Host

$Contents = Get-Content $myPath

$Activity    = $Contents[0].split("=")[1]
$TaskStatus  = $Contents[1].split("=")[1]
$Description = $Contents[2].split("=")[1]
$DueDate     = $Contents[3].split("=")[1]


Write-host ("`nActivity:{0}{1,20}`nStatus:{1}`nDescription:{2}`nDueDate:{3}`n" -f $Activity,$TaskStatus,$Description,$DueDate);

$specs = new-object PSObject
add-member Noteproperty -inputobject $specs  -Name Activity -value $Activity
add-member Noteproperty -inputobject $specs  -Name TaskStatus -value $TaskStatus
add-member Noteproperty -inputobject $specs  -Name Description -value $Description
add-member Noteproperty -inputobject $specs  -Name DueDate -value $DueDate

$specs
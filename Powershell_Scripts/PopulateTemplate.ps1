$mytemplate = "C:\Data\PowerShell\Templates\testtemplate1.txt";
$myresults= $mytemplate
$myresults = $myresults -replace "template" , "result"
$first = "Steven";
$last = "Mandel";
$address = "8515 CentralPark Ave.";
$city = "Skokie"
$state = "Illinois"

clear-host;

$template = get-content $mytemplate -Raw
$expanded = Invoke-Expression "@`"`r`n$template`r`n`"@"
$mynumber = 0;


$expanded | out-file $myresults
#$expanded

<#
ForEach ($line in $expanded )
{
$mynumber++;

  write-host line $mynumber

  Write-Host $line
}
#>
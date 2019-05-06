$file = "C:\EnlivantProjects\VS2017_201903\BonusLetters2019\BuildBonusLetters\Program.cs"

clear-host
#$match = "[public-internal] static\s*\w* ()"
$match = "[public-internal-private] static\s*\w*()"


$txtlines = get-content  $file

foreach($line in $txtlines)
{
   $tmpline = $line.Trim()
   $line

  if ( $tmpline -Match $match -and $tmpline -notmatch ";" -and $tmpline -notmatch "\/\/")
  {
  $line
  }

}

clear-host

$start = "C:\EnlivantProjects\VS2017_201903\BonusLetters2019"

Add-Type -AssemblyName System.Windows.Forms
$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
    SelectedPath = $start
    }
$result = $FolderBrowser.ShowDialog()

if ( $result -eq "OK" )
{
  

$folder = $FolderBrowser.SelectedPath


$files = get-childitem -path "$folder"   -recurse  -file 
$match = "[public-internal-private] static \s*\w*()"
$match2 = "public class"


write-output $folder | out-file c:\temp\bl_doc.txt 

foreach ( $file in $files )
{
   $extension = [System.IO.Path]::GetExtension($file)

   if ( $extension -eq ".cs" )
   {
   
       #$file.FullName

       $txtlines = "";

       $txtlines = get-content  $file.FullName

    foreach($line in $txtlines)
    {
   $tmpline = $line.Trim()

  if ( $tmpline -Match $match -and $tmpline -notmatch ";" -and $tmpline -notmatch "\/\/")
  { 
  write-output $tmpline | out-file c:\temp\bl_doc.txt -append
  }

   if ( $tmpline -Match "public class")
  {
  write-output $tmpline | out-file c:\temp\bl_doc.txt -append
  }  
     
      
    }

}

}
}
else
{ write-host "Folder Dialog canceled"
}
Write-Host "Application Complete"
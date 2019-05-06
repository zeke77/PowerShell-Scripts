cd c:\temp


Clear-Host

#dir -directory

$folders = get-childitem -directory 
#$folders

#$folders2 =  get-childitem -directory | select name
#$folders2

foreach ( $folder in $folders)
{
$folder.Name
  get-childitem $folder
}
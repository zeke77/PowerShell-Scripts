$start = "C:\temp"
$target = "C:\Temp2"

cd $start

clear-host

$folders = Get-ChildItem -directory

foreach ( $folder in $folders )
{
   $folder.Name
   $dir = $target + "\" + $folder.Name

   $dir

       if(!(Test-Path -Path $dir )){
        New-Item -ItemType directory -Path $dir
        Write-Host "New folder created"
    }
    foreach( $file in get-childitem $folder -File )
    {
       #$file.name
       $file.FullName
       copy-item $file.FullName -destination $dir

    } 
}


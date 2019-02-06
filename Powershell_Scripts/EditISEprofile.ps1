
# edit ise profile

if ( exist $profile )
{
$message =  $profile + " : Exists"
 
}
else
{

$message =  $profile + " : Doesn't Exists"

   new-item -path $profile -itemtype file -force

}

 write-output $message
 write-output " "

 # to launch the profile
 
powershell_ise $profile
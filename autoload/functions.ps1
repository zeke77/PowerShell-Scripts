function not-exist { -not (Test-Path $args) }

Set-Alias exist Test-Path 
set-alias !exist not-exist


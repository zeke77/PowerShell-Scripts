clear

get-childitem C:\EnlivantProjects\StarCRMProjects\Short_Term_Stay | where-object { $_.PSIsContainer -eq $false } |  select-object -ExpandProperty Name | out-file c:\temp\short_term.txt -force -append
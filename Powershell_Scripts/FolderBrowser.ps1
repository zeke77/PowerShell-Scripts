
Add-Type -AssemblyName System.Windows.Forms

# $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog # -Property @{SelectedPath = 'C:\EnlivantProjects\StarCRMProjects'}
$FolderBrowser.SelectedPath = "C:\temp"

[void]$FolderBrowser.ShowDialog()
$FolderBrowser.SelectedPath
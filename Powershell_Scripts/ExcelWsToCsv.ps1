Function ExcelWsToCSV ($File)
{
    $excelFile = $File
    $csvFile = $newfile = $excelFile.TrimEnd("xlsx") + "csv";


    $Excel = New-Object -ComObject Excel.Application
    $Excel.Visible = $false
    $Excel.DisplayAlerts = $false
    $wb = $Excel.Workbooks.Open($excelFile)

    $ws = $wb.Worksheets.Item(1);

    $ws.SaveAs($csvFile,6)

    #break;

    $Excel.Quit()
}
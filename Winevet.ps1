Get-WinEvent -LogName Application -MaxEvents 100

 	
Get-WinEvent -listlog *

Get-WinEvent -listlog * | select logname, RecordCount | where {$_.recordcount} | ft -autosize

# Specific 
Get-WinEvent -Logname Application -MaxEvents 10 | Where { $_.LevelDisplayName -eq "Error" } | Format-Table -Property TimeCreated, Id, Message -AutoSize 

Get-WinEvent -LogName System -MaxEvents 300| where {$_.LevelDisplayName -eq "Error"}

# Here I display the events of the last twenty-four hours:
# $dayss=(get-date).AddDays(-15) less then 15 days from current date
$days = (Get-Date).AddHours(-24)
Get-WinEvent -LogName "Application" | Where {$_.TimeCreated -ge $days -and $_.LevelDisplayName -eq "Error"}

Get-WinEvent -LogName Application -MaxEvents 500| where {$_.TimeCreated -ge $dayss -and $_.LevelDisplayName -eq "Error"}|Format-List

# Remote script execute
Invoke-Command -ComputerName exch1 -ScriptBlock {Get-WinEvent -LogName System
     -MaxEvents 500|where{$_.TimeCreated -ge $dy -and $_.LevelDisplayName -eq "Error"}|Format-Table 
-Property TimeCreated,Id, Message -AutoSize}
#  Get-EventLog -LogName System -Newest 5
# Get-EventLog -List

# Get-EventLog -LogName Application -EntryType Error -Newest 5

# $Events = Get-EventLog -LogName System -EntryType Error -Newest 1000
# $Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending

# Get-EventLog -LogName System -InstanceId 10016 -Source DCOM

# Get-EventLog -LogName System -ComputerName Server01, Server02, Server03

# Get-EventLog -LogName System -Message *description*

# Property details
$A = Get-EventLog -LogName System -Newest 1
$A | Select-Object -Property *

# Based on source and event id
Get-EventLog -LogName Application -Source Outlook | Where-Object {$_.EventID -eq 63} |
Select-Object -Property Source, EventID, InstanceId, Message

# Time period
$Begin = Get-Date -Date '1/17/2019 08:00:00'
$End = Get-Date -Date '1/17/2019 17:00:00'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End


#Open evenlog windows
Show-EventLog
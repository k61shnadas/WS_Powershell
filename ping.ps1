ping -t 8.8.8.8|foreach{"0} - {1}" -f (Get-Date), $_}

#For store into the text file [Output]

ping -t 8.8.8.8|foreach{"{0} - {1}" -f (Get-Date), $_}>D:\pingfile.txt

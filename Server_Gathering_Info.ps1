### Get list of compurers created before a time period
Get-ADComputer -Filter 'name -like "<server>"' -Properties whencreated | 
Where-Object {$_.whencreated -ge ((Get-Date).AddDays(-120)).Date} | select Name,Enabled,WhenCreated 

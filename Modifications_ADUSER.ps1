import-module activedirectory

$users = import-csv -path c:\users\administrator\desktop\users.csv

foreach ($user in $users) {
	Get-ADUser -Filter "SamAccountName -eq '$($user.samaccountname)'" -properties * -searchbase "ou=IT,dc=region,dc=com"|set-aduser -replace @{l="$($user.city)"; physicalDeliveryOfficeName = "$($user.Office)";division="$($user.Division)"}}
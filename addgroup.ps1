import-csv [filelocation.third_sheet.csv] | foreach-object {Add-ADGroupMember -Identity [groupname] -Member $_.SamAccountName}

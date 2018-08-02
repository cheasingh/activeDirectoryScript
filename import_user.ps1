import-csv c:\users\raksmey\desktop\third_sheet.csv | foreach-object { $userprincipalname = $_.SamAccountName + "@lab.edu" 
New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $userprincipalname -Name $_.name -DisplayName $_.name -GivenName $_.cn -SurName $_.sn -Department $_.Department -Path "OU=Users,OU=BMET,OU=University,DC=lab,DC=edu
" -Officephone $_.OfficePhone -ScriptPath $_.Scriptpath -Company $_.Company -AccountPassword (ConvertTo-SecureString -AsPlainText $_.Password -force) -Enabled $True -PasswordNeverExpires $True -PassThru }

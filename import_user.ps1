import-csv "[filelocation]" | foreach-object { 
New-ADUser -Name $_.name -SamAccountName $_.SamAccountName -UserPrincipalName "$($_.SamAccountName)@test.local" -GivenName $_.cn -SurName $_.sn -DisplayName $_.displayname -Path "OU=user,DC=test,DC=com" -AccountPassword (ConvertTo-SecureString -AsPlainText $_.Password -force) -Enabled $True -PasswordNeverExpires $True -PassThru }

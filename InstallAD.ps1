#configure a static IP address
New-NetIPAddress -IPAddress 192.168.5.1 -InterfaceAlias "Ethernet" -DefaultGateway 192.168.5.9 -AddressFamily IPv4 -PrefixLength 24

#Configure DNS server address
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 192.168.5.1

#Install Active Directory Services and DNS and create a new domain in a new forest
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName Region.com

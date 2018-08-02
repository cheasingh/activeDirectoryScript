#5. Create a DNS reverse lookup zone

Add-DnsServerPrimaryZone 5.168.192.in-addr.arpa -ZoneFile 5.168.192.in-addr.arpa.dns

#6. Create PTR

Add-DnsServerResourceRecordPtr -ZoneName 5.168.192.in-addr.arpa -Name 1 -PtrDomainName ad1.Region.com
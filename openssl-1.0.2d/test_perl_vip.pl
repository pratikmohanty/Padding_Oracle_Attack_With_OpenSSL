#!/usr/bin/perl
my $VIP= @ARGV[0];
my $i=0;
print "my vip is $VIP\n";
while(1)
{
system("apps/openssl s_client -connect $VIP:443 -dtls -state -CKE_pkcs_pad_corrupt 1");
system("apps/openssl s_client -connect $VIP:443 -dtls -state -CKE_pkcs_pad_corrupt 2");
system("apps/openssl s_client -connect $VIP:443 -dtls -state -CKE_pkcs_pad_corrupt 3");
system("apps/openssl s_client -connect $VIP:443 -dtls -state -CKE_pkcs_pad_corrupt 4");
}

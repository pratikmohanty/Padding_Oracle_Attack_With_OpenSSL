while(1)
{
	`apps/openssl s_client -connect 10.102.57.146:443 -state -CKE_pkcs_pad_corrupt 1 -cert /root/pratik/rsa_clnt1.pem -key /root/pratik/rsa_clnt1ky -tls1_2`;
}

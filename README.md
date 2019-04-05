# Padding_Oracle_Attack_With_OpenSSL
Corrupting PKCS padding for Client Key Exchange, Certificate Verify. Corrupting Finish Message. Corrupting Application Data.

Following options are added to openssl s_client
---------------------------------------------------

-CKE_pkcs_pad_corrupt arg   - Corrupting PKCS padding for CKE with position as arg (1-  1st Byte, 2- 2nd Byte, 3- Make random byte to 0, 4- Make last byte as random (not 0)

 -CV_pkcs_pad_corrupt arg   - Corrupting PKCS padding for CV with position as arg (1-  1st Byte, 2- 2nd Byte, 3- Make random byte to 0, 4- Make last byte as 1

 -FIN_client_corrupt arg   - Corrupting Finish Message after encryption with arg as 1

 -FIN_digest_client_corrupt arg   - Corrupting Finish Message Digest before encryption with arg as 1

 -app_data_padding_length_0   - Corrupting App data padding length to 0

 -app_data_padding_0_length_proper   - Corrupting App data padding value to 0 with length proper

 -app_data_padding_0_length_incorrect   - Corrupting App data padding value to 0 with length incorrect

 -app_data_corrupt   - Corrupting App data

 -multi_msg <option>                        -Works for when server requests for client certificate.

					Option 1. Send Client Certificate, Client Key Exchange, Certificate Verify all in one handshake packet.

					Option 2. Send Client Certificate and Client Key Exchange in a single handshake packet.

					Option 3. Send Client Key Exchange and Certificate Verify in one handshake packet.
					
					Option 4. Send CC, CKE, CV, CCS and App Data all in the same TCP packet.

#!/bin/sh
if [[ $# -ne 1 ]]; then
echo "USAGE: decrypt.sh <encrypted text>, pubkey name is pubkey.pem, privateKey name is mykey.pem"
exit 1
fi
encryptedText=$1
echo ${encryptedText} |openssl base64 -d > rsaoutput.txt
openssl rsautl -decrypt -in rsaoutput.txt -inkey mykey.pem -out plainText.txt

cat plainText.txt|pbcopy
cat plainText.txt
rm plainText.txt
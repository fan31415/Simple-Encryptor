#!/bin/sh
if [[ $# -ne 1 ]]; then
echo "USAGE: encrypt.sh '<plain text>', pubkey name is pubkey.pem, privateKey name is mykey.pem"
exit 1
fi
plainText=$1
echo ${plainText} > rsainput.txt
openssl rsautl -encrypt -in rsainput.txt -inkey pubkey.pem -pubin -out rsaoutput.txt
rm rsainput.txt
cat rsaoutput.txt|openssl base64 > base64Internal.txt
rm rsaoutput.txt
echo `cat base64Internal.txt`| sed s/[[:space:]]//g | pbcopy
rm base64Internal.txt

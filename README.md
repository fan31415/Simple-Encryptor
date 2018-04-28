# Simple Encryptor
This is a small tool for quickly encrypt your message by RSA into the Base64 form, so that you can paste it to anywhere you want to avoid information leak etc.
## Requirement
* Mac OS supported curretly.
* openssl
## Prepare Key
Generate key file.
```sh
openssl genrsa -out mykey.pem 1024  
```
Extract public key from key file.
```sh
openssl rsa -in mykey.pem -pubout -out pubkey.pem  
```
## Encrypt your message
```sh
sh encrypt.sh "Your message is here" 
```
The message you enter will encrypt by your public key (`pubkey.pem`), and then transform to base64 form, finally copy to your clipboard automatically.
Then you can copy this to anywhere you want, eg. in email text or in any note app.
## Decrypt your message
```sh
sh decrypt.sh "b9ZiPUB1VIQgzP0QWz7Z1Gbk/NaWqi58T0vQLo2C4+SYuyYfdpB0dyy4pyXnIDTokqA2x3ozbqDX0eMYRJer3RccvzHa3B0coYKEd6c9+67Z2Bnm5M7Ss5Jmi+OjHmP7zMKrl7ejuTeF9NzY6EhEoJmcgLFReM1+7ZvXhLuvrRc=" 
```
You should replace the base64 string above with your own encrypted message. Then you can see the original message (plain text), and it will also copy to your clipboard simultaneously.
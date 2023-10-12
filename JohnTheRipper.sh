#Python script to identify hashes
wget https://gitlab.com/kalilinux/packages/hash-identifier/-/raw/kali/master/hash-id.py #download this file
python3 hash-id.py #to run it

#Syntax
john --format=[format] --wordlist=[path to wordlist] [path to file]

#List of all formats
john --list=formats
#hightlight an specifit format: ex md5
john --list=formats | grep -iF "md5"

#If no salt needed then add "raw-" before the format

#rockyou file location for wordlist
/usr/share/wordlist/rockyou.txt

#EXAMPLE
john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou.txt hash_to_crack.txt
#EXAMPLE



#CRACK ZIP#

#CRACK RAR#

#CRACK SSH or id_rsa#
wget https://raw.githubusercontent.com/magnumripper/JohnTheRipper/bleeding-jumbo/run/ssh2john.py

python ssh2john.py idrsa.id_rsa > key_hash

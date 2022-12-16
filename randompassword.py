#!usr/bin/python3

import secrets
import string

letters = string.ascii_letters
digits = string.digits
alphabet = letters + digits

pwd_l = input("Password length?")
if type(pwd_l) is int:
    pwd_l = 8
    if pwd_l > 12:
        pwd_l = 12
    elif pwd_l < 8:
        pwd_l = 8
else:
    pwd_l = 8
    
pwd = ""
for i in range(pwd_l):
    pwd += "".join(secrets.choice(alphabet))

print(pwd)

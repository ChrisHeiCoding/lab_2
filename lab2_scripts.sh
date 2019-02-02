#!/bin/bash
# Authors Christopher Hei
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter an expression: "
read userregex
echo "Enter a target file: "
read _FILE
#recives regex expession and file name from user
grep "$userregex" $_FILE
echo "number of phone numbers: "
grep -c '[[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]][[:digit:]][[:digit:]]$' regex_practice.txt
#prints count of number of any phone numbers, ie lines with xxx-xxx-xxxx (x = digit) only
echo "number of emails: "
egrep -c '\S+@\S+\..{3}' regex_practice.txt
#prints count of all emails that have any string, then an @, then any string, and ends with "." and any three letters
grep '303-[[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]][[:digit:]][[:digit:]]$' regex_practice.txt > phone_results.txt
egrep '\S+@geocities.com$' regex_practice.txt > email_results.txt
echo "Enter a regex expression: "
read USER_EXPRESS
grep "$USER_EXPRESS" regex_practice.txt > command_results.txt

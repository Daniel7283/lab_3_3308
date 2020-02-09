#!/bin/bash
# Authors : Daniel Levin
# Date: 2/5/2020
#Problem 1 Code:
#Make sure to document how you are solving each problem!
# Prompts the user for the file name and expression than stores the user input
echo "Enter a File Name: "
read name
echo "Enter a regular expression: "
read expression
grep $expression $name

# any number-anynumber-anynumber
echo "The amount of phonenumbers is:"
grep -c  [0-9].-.[0-9]*-.[0-9]* regex_practice.txt

# anyCharacter@anyCharacter.anyCharacter is an email format
echo "The amount of emails is: " 
grep -c [a-z:0-9:A-Z]*@.[a-z:0-9:A-Z]*..[a-z:0-9:A-Z]. regex_practice.txt

# ^3*0*3 searches for the 303 part
echo "This list of phone numbers are: "
grep -o ^3*0*3*-.[0-9]*-.[0-9]* regex_practice.txt

# store the list of emails
grep [a-z:0-9:A-Z]*@.[a-z:0-9:A-Z]*..[a-z:0-9:A-Z]. regex_practice.txt >> email_results.txt

git add email_results.txt
git commit -m "updating the email_results.txt"
git push origin master

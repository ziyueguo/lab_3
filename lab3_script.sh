#!/bin/bash
# Authors : Ziyue Guo
# Date: 09/27/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a filename: "
read filename
echo "Enter a regular expression: "
read regex
grep $regex $filename

echo "phone count num:"
grep -c -Eo '[0-9]{3}-[0-9]{3}-[0-9]{4}' $filename

echo "email count num:"
grep -c -Eo '[A-Za-z0-9.%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}' $filename
grep -c -Eo '[A-Za-z0-9.%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}' $filename >> regex_practice.txt

echo "303 area code phone:"
grep -Eo '303-[0-9]{3}-[0-9]{4}' $filename
grep -Eo '303-[0-9]{3}-[0-9]{4}' $filename >> regex_practice.txt

grep '@geocities.com' $filename >> email_results.txt

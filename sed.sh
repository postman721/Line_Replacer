#!/bin/bash

echo " ------------------------------------------------------------------------"
echo "
    <Line Replacer>  Copyright (C) 2018> JJ Posti (techtimejourney.net)
    This program comes with ABSOLUTELY NO WARRANTY; for details see: 
    http://www.gnu.org/copyleft/gpl.html
    This is free software, and you are welcome to redistribute it
    under GPL Version 3, 29 June 2007."
echo " ------------------------------------------------------------------------"

echo -e "Enter a file name. Supply absolute path.\n"
read path
echo ""

echo -e "Line to be replaced? Replacing all instances found.\n"
read replace
echo ""

echo -e "What is the replacement? Enter the new line.\n"
read new
echo ""

echo "Continue with the following values:"
echo ""

echo -e "Pathway is: $path"
echo ""

echo -e "Replace all lines of:$replace"  
echo ""

echo -e "New line:$new"
echo ""  

read -p "Press enter to continue. Press Control+c to quit."
echo ""

sed -i "s/${replace}/${new}/g" $path
echo "Lines changed. Exit the program."
exit


#! /bin/bash
# display user infomation from the system

echo "User info for userId: $USER"
echo UID: $UID
echo HOME: $HOME
echo -------------------------

# diaply customize variable 

numVar=10
strVar="this normal string"
echo "this is num: $numVar"
echo "this is str: $strVar"
echo -------------------------


# display command swap
today=$(date +%Y%M%d)
ls ./ -al > log.$today

exit 22
echo ------------------------
# float Computer
computerVar=$(echo "scale=4; 1 / 3" | bc)
echo float computer result is: $computerVar





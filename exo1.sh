 #!/bin/bash

errorString=""
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
Password=''

if [ "$1" = "-f" ];then
while read line; do Password=$line; done < $2
else
Password=$1
fi



if [ ${#Password} -lt 10 ];then 
errorString="${errorString},we have less than 10 character"
fi

if [[ ! $Password =~  [1-9] ]];then
errorString="${errorString},il y pas un chiffre"
fi

if [[ ! $Password =~  [a-z] ]];then
errorString=" ${errorString},il y pas de petit char"
fi

if [[ ! $Password =~  [A-Z] ]];then
errorString="${errorString},il y pas de grand char"
fi

if [ "$errorString" = "" ];then
echo -e "${GREEN}tout est ok ${NC}"
exit 0 
else
echo -e "${RED} $errorString ${NC}"
exit 1
fi


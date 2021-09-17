#!/bin/bash
	
	errorString=""
	RED='\033[0;31m'
	GREEN='\033[0;32m'
	NC='\033[0m' # No Color
	
	
	if [ ${#1} -lt 10 ];then 
	errorString="${errorString}We have less than 10 character"
	fi
	
	if [[ ! $1 =~ [1-9] ]];then
	errorString="${errorString}You don't have a number"
	fi
	
	if [[ ! $1 =~ [a-z] ]];then
	errorString=" ${errorString}You don't have a little letter"
	fi
	
	if [[ ! $1 =~ [A-Z] ]];then
	errorString="${errorString}You don't have a big letter"
	fi
	
	if [ "$errorString" = "" ];then
	echo -e "${GREEN} It's good password ${NC}"

	exit 0 
	else
	echo -e "${RED} $errorString ${NC}"
	exit 1
	fi


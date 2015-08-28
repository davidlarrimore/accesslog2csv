#!/bin/bash
# This file reads the ip.txt file, uses the api.hackertarget.com reverseDNS API and then
# creates a csv file output

fil=./ip.txt

> iplist2csv.csv
echo "\"IP_Address\",\"Hostname\"" >> iplist2csv.csv

# if $fil is a file
if [ -f $fil ]
then

  # main file parses loop
  while read line
  do

    # TODO: Replace with "dig +noall +answer -x $line"
    hostName=$(curl http://api.hackertarget.com/reversedns/?q=$line)

    if [ "$hostName" = "no records found" ]
    then
    	conCat="\"NA\",\"NA\""
    else
    	conCat="\"${hostName// /\",\"}\""
	fi

    echo "$conCat" >> iplist2csv.csv

  done < $fil

fi
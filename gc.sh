#!/bin/bash

for i in {00..09}
do
	if [[ $(expr $i % 2) -eq 0 ]]
	then
		date -s "$(date --date="+1 day" +"%Y-%m-%d %H:%M:%S")" && mv orgcloneres.in orgcloneres.out && gitadd
	elif [[ $(expr $i % 2) -ne 0 ]]
	then
		date -s "$(date --date="+1 day" +"%Y-%m-%d %H:%M:%S")" && mv orgcloneres.out orgcloneres.in && gitadd
	fi
done

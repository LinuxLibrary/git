#!/bin/bash

echo "Please input your Repos parent directory"
read REPODIR
echo

if [[ -z $REPODIR ]]
then
	REPODIR="/GitHub"
fi

echo "Updating ACCOUNT PUSH-STATUS PULL-STATUS" | awk '{printf "%-10s %-50s %-15s %-15s\n",$1,$2,$3,$4}'
for i in `echo $(cd $REPODIR && find ./ -type d -name .git -exec echo {} \; | awk -F/.git$ '{print $1}' | awk -F^./ '{print $2}')`
do
	cd $REPODIR/$i
	GITURL=`git remote -v | grep fetch | awk '{print $2}'`
	ACCOUNT=`echo $GITURL | awk -F.com/ '{print $2}' | awk -F.git$ '{print $1}'`
	GPLOUT=$(git pull -ff origin master 2>&1 | grep up-to-date)
	if [[ -z $GPLOUT ]]
	then
		PULLOUT="COMMITS-PULLED"
	else
		PULLOUT="UP-TO-DATE"
	fi
	PUSHCHK=`git lg | head -n1 | grep -v origin/master`
	if [[ ! -z $PUSHCHK ]]
	then
		GPSOUT=$(git push -fu origin master 2>&1)
		PUSHOUT="COMMITS-PUSHED"
	else
		PUSHOUT="UP-TO-DATE"
	fi
	echo  "Updating $ACCOUNT $PUSHOUT $PULLOUT" | awk '{printf "%-10s %-50s %-15s %-15s\n",$1,$2,$3,$4}'
done

#!/bin/bash

echo "Please input your Repos parent directory"
read REPODIR
echo

if [[ -z $REPODIR ]]
then
	REPODIR="/e/Practice/GitRepos"
fi

#for i in `echo $(ls $REPODIR | tr -d '/')`
echo -e "Updating ACCOUNT\t\t\tPUSH-STATUS\t\tPULL-STATUS"
for i in `echo $(cd $REPODIR && find ./ -type d -name .git -exec echo {} \; | awk -F/.git$ '{print $1}' | awk -F^./ '{print $2}')`
do
#	echo "Changing to $REPODIR/$i"
	cd $REPODIR/$i
	GITURL=`git remote -v | grep fetch | awk '{print $2}'`
	ACCOUNT=`echo $GITURL | awk -F.com/ '{print $2}' | awk -F.git$ '{print $1}'`
#	echo "Updating $ACCOUNT ..."
#	echo "Pulling all the changes from $GITURL <--- ..."
	GPLOUT=$(git pull -ff origin master 2>&1)
	if [[ ! -z $GPLOUT ]]
	then
		PULLOUT="COMMITS PULLED"
	else
		PULLOUT="UP-TO-DATE"
	fi
	PUSHCHK=`git lg | head -n1 | grep -v origin/master`
	if [[ ! -z $PUSHCHK ]]
	then
#		echo "Pushing all local commits to $GITURL ---> ..."
		GPSOUT=$(git push -fu origin master 2>&1)
		PUSHOUT="COMMITS PUSHED"
	else
#		echo "ORIGIN is up-to date. No commits found to push!"
		PUSHOUT="UP-TO-DATE"
	fi
	echo -e "Updating $ACCOUNT\t\t$PUSHOUT\t\t$PULLOUT"
done

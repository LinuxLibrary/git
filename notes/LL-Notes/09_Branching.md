# Git Branching and Merging

- To check what all the branches we have and also on which branch we are:

	```
	# git branch
	```

- To create a new branch in GIT:

	```
	# git branch <branch_name>
	Ex: # git branch feature1
	```

- To work on it we need to move/checkout to that branch. For easy reference i am using my ex. branch feature1 ahead in this topic.

	```
	# git checkout feature1
	```

- Now try to chek on which branch you are. You need to notice that you are on feature1

	```
	# git branch
	NOTE: The branch which you are on should be highlighted with asterik symbol at begining.
	```

- Now you can do your work on it. Once you have finished your work then you need to push your changes which have commited on this branch to the same remote branch after of series of commits.

	```
	# git push origin feature1
	```

- Once you are clear that all the work has completed in this branch then you can merge it with the master branch. For that you need to checkout to the master branch first.

	```
	# git checkout master
	```

- Now you can merge all the changes in that branch into the master branch.

	```
	# git merge feature1
	```

- Once you merged the changes into master then you need to push the affected changes on master to remote master.

	```
	# git push origin master
	```

- If you feel that there is no need of this branch then you can remove that branch. You also need to remove that branch on GitHub too.

	```
	# git branch -D feature1
	# git push origin :feature1
	```

- Congrats, now you are all done. You have all the changes of the new feature branch in the master and also without affecting those you have verified those from the feature branch and have merged into master. After these all you have removed the branch.

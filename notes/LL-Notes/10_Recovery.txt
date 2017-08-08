# Recovering data after deleting data using "git rm" and "rm -rf"

- Some times we might delete some data accidentally or else some times we might delete data as of our choice.
  But what ever the case might be we might need that data after some time in some cases. So in Such case we
  can recover the data.

- Let us assume that we deleted abc.txt. Staged, commited and push the changes to git. Then we need to get the
  previous commit id at where the file was existing. Now we need to checkout the file to that commit.

- We now have the file recovered. But it is not good with the version control, so let us create a directory,
  move that file into the newly created directory using "git mv" add it to stage, commit and push it to git.

- List information about a particular filename that has been deleted from a git repository:
  This can be used to get the commit id of the file when it was removed.

	```
	git log -- [deleted-filename] --> 
	```

- Now find the commit before the file was removed.

	```
	git rev-list -n 1 HEAD -- [deleted-filename]
	```

- Restore the filename to that commit using the commit id by following the below procedure.

	```
	git checkout <COMMIT_ID> -- <FILE_NAME>
			( or )
	git checkout <COMMIT_ID> <FILE_NAME>
	```

- Either of the above command will work to recover the file.

	```
	mkdir recover && git mv <FILE_NAME> recover/
	```

- Now stage the changes, commit and push to git.

- While doing the same thing for directories we need to rename the directory after recovering and need to 
  stage, commit ad push to Git.

	```	
	git checkout <COMMIT_ID> -- <DIR_NAME>/*
			( or )
	git checkout <COMMIT_ID> <DIR_NAME>/*
	```

> NOTE: This procedure can be used when we remove the directory as well.

> THE BEST OF THIS PROCESS IS THAT WE CAN RECOVER FILES & DIRECTORIES IN A REPOSITORY IF THOSE HAVE BEEN REMOVED USING "rm -rf".

- If we have accidentally removed some files using "rm -rf" within a repository then we just need to get the latest commit ID in that repository and need to checkout that file or directory to that commit ID. This will restores the files which were deleted within a repository even using the dangeroous command "rm -rf".

- Another process of doing this is get the previous commit ID and reset to it. Or else directly reset to the previous commit
	- Reset to previous commit by using commit ID

	```
	git reset --hard <COMMIT_ID>
	```

	- Reset to previous commit

	```
	git reset --hard HEAD~
	```

- After doing this you can amend the commit and push the code to remote to make the changes permanent

	```
	git commit --amend
	```

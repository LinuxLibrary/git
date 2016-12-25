# GitHub Intro

- Step 1
------
	Login to github.com and signup for a free account.
	If you need a private repository then you need to signup for paid account.

- Step 2
------
	Login to your Linux machine and create a direcotry for Git to store all your Git Repos
```
	# mkdir /git
```
- Step 3
------
	Configure your username and email. So that if someone did any commit then everyone will know who have made it.
```
	# git config --global user.name "User Name"
	# git config --global user.email <email_id>
```
- Step 4
------
You can get your git repositories to your local machine in two ways
- Go to the "/git" directory and clone your repository with the git URL.
- Manually initialize git, add and set the url of the repository, fetch and pull.
	
	- Case 1: Go to your git directory and clone the repository
```
		# cd /git
		# git clone https://<username>@github.com/<account_name>/<repo_name>.git
```
	  Example:
```
		# git clone https://bgomkar@github.com/bgomkar/testrepo.git
		# git clone https://bgomkar@github.com/vmsnivas/testrepo2.git
```		
	- Case 2: Manually initialize git, add and set url, fetch and pull
```
		# cd /git
		# mkdir <repo_name>
		# cd <repo_name>
		# git init
		# git remote add -t <Branch_Name> -f origin https://<username>@github.com/<username>/<Repo_name>.git
		# git remote set-url origin https://<username>@github.com/<username>/<Repo_name>.git
		# git fetch
		# git pull -ff origin <Branch_name>
```		
	Example:
```
		# cd /git
		# mkdir testrepo
		# cd testrepo
		# git init
		# git remote add -t master -f origin https://bgomkar@github.com/bgomkar/testrepo.git
		# git remote set-url origin https://bgomkar@github.com/bgomkar/testrepo.git
		# git fetch
		# git pull -ff origin master
```

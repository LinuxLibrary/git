# Configuring your GitHub

Before working with GitHub we need to know that we can make the changes at 3 different levels.
- ***Local***

>	While making the changes locally those changes will take effect to the local user or for a single repo 
>	by which we configured git.

- System

>	If we make any changes at a system level then those changes will take effect to all the users
>	on that system.

- Global

>	If we make any changes at a global level then those changes will take effect to the repository
>	globally. In the sense those will be effected to the repository in our global account at Git.

USAGE
-----
```
git config [<file-option>] [type] [-z|--null] name [value [value_regex]]
git config [<file-option>] [type] --add name value
git config [<file-option>] [type] --replace-all name value [value_regex]
git config [<file-option>] [type] [-z|--null] --get name [value_regex]
git config [<file-option>] [type] [-z|--null] --get-all name [value_regex]
git config [<file-option>] [type] [-z|--null] [--name-only] --get-regexp name_regex [value_regex]
git config [<file-option>] [type] [-z|--null] --get-urlmatch name URL
git config [<file-option>] --unset name [value_regex]
git config [<file-option>] --unset-all name [value_regex]
git config [<file-option>] --rename-section old_name new_name
git config [<file-option>] --remove-section name
git config [<file-option>] [-z|--null] [--name-only] -l | --list
git config [<file-option>] --get-color name [default]
git config [<file-option>] --get-colorbool name [stdout-is-tty]
git config [<file-option>] -e | --edit
```
We will have several configs like configuring the username, user email address, our terminal appearence 
settings and configuring some alias to the commands we wish. These changes will be stored in the .git/config
file. We can do the same thing by editing this file too.

***1. Configuring a user name***

>	It is important to configure a username as if we do any commit then everyone using that repository 
>	can know that who made the changes. If we don't the changes will be committed as the user we locally
>	login with.

```
	# git config --global user.name "<FULL NAME>"
	Ex : # git config --global user.name "Arjun Shrinivas"
```

***2. Configuring user's email address***
```
	# git config --global user.email emailid@domain.com
	# git config --global user.email vmsnivas@gmail.com
```

***3. Configure your default editor for Git***

>	This is the default editor used to edit our git configs.

```
	# git config --global core.editor "/bin/vi"
```

>	After doing this try to use the below command to edit your git config. Now you will be able to use 
>	vi editor to edit your git config. In this way you can use any editor. All you need to do is you 
>	should specify the complete path of the editor. You can get it by using like "which vi"

```
	# git config --global --edit
```
***4. Configure alias commands***

>	We can also configure some aliases to use them instead of running some long commands.

```
	# git config --global alias.s "status s" --> Shows the status in silent mode
	# git config --global alias.lg "log --oneline --decorate --all --graph"
```

***5. Colorizing display for all users of the system***
```
	# git config --global color.ui true
```

***6. Configure Carriage return / Line feed (crlf)***

>	If it is true then it will adds the CRs back in when you check files out to the working directory, 
>	making them easier to edit in some Windows apps which require CRs.

```
	# git config --global core.autocrlf true
```

***7. Configure Push Default***

>	Matching - Pushes all matching branches up to GitHub
>	Simple - Just pushes current branch up to GitHub

```
	# git config --global push.default simple
```

***8. Configure Pull Default***
```	
	# git config --global pull.rebase true
```

***9. Configure Reuse Recorded Resolution (ReReRe)***

>	This will records all fixes to merge conflicts and reuses them automatically if the same conflict recurs.

```
	# git config --global rerere.enabled true
```

***10. Configure Git URL***
```
	# git remote add -t <BRANCH> -f origin https://<username>@github.com/<username>/<repository>.git
	# git remote add -t master -f origin https://vmsnivas@github.com/vmsnivas/bss.git
```

***11. List you Git configs***
```
	# git config --global --list
```
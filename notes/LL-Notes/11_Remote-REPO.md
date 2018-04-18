# Create a remote repository

- We can create repositories from our local machine.
- For this we need to use the GitHub API. We need to curl the API and provide the username and repo name.
- User Repos

	```
	curl -u <USER_NAME> https://api.github.com/user/repos -d '{"name":"<REPO_NAME>"}'
	```

	- After this we can clone this repo into our local machine and wok on it as usually.

	```
	git clone git+ssh://git@github.com/<ACCOUNT_NAME>/<REPO_NAME>.git
	```

- Org Repos

	```
	curl -u <USER_NAME> https://api.github.com/orgs/<ORG_NAME>/repos -d '{"name":"<REPO_NAME>"}'
	```

	- To clone the ORG repo

	```
	git clone git+ssh://git@github.com/<ORG_NAME>/<REPO_NAME>.git
	```

# Delete a remote repository

- User Repos

	```
	# curl -u vmsnivas -X DELETE https://api.github.com/repos/vmsnivas/test
	```

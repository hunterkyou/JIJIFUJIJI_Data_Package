#!/bin/bash
# repo url, hardcoded because only one repo is used
REPO = "https://github.com/hunterkyou/JIJIFUJIJI_Datapack.git"

# check whether repo is cloned or not by chcking .git folder
# check 5 times because sometimes network is bad
for i in {1..5}; do
	if [ -d ".git" ]; then
		echo "Repo is cloned"
		break
	else
		echo "Repo is not cloned, cloning"
		if git clone $REPO . --recursive; then
			echo "Successfully cloned"
			break
		else
			echo "Failed to clone, retrying"
		fi
	fi
done
if ! [ -d ".git" ]; then
	echo "Failed to clone repo"
	exit 1
else
	for i in {1..5}; do
		echo "fetching latest changes"
		if git pull --recurse-submodules; then
			echo "Successfully updated"
			break
		else
			echo "Failed to update, retrying"
		fi
	done
fi

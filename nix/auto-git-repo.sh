#!/usr/bin/bash

read -p "Enter your username: " username
read -p "Enter your new repo's name:  " repoName
read -p "Enter the directory you'd like to store your repo in. (Default is /Data/my-git-repos): " repoPath
defaultRepoPath="/Data/my-git-repos"


if [[ "$repoPath" == "" ]]; then
   cd "$defaultRepoPath"
else
   cd "$repoPath"
fi

if [[ -d "$repoPath/$repoName" ]]; then 
	exit 1
else 
	mkdir "$repoPath/$repoName"
fi

cd "$repoPath/$repoName"
touch README.md
echo "#$repoName" > README.md	
git init
curl -u "$username" https://api.github.com/user/repos -d '{"name":"'$repoName'"}'
git config --global --add safe.directory "$repoPath/$repoName"
git remote add origin https://github.com/$username/$repoName.git

git branch -m main
git add . 
git commit -m "readme"
git push --set-upstream origin main



$repoName=Read-Host -Prompt "Enter the name of the repositroy you'd like to create: "
$username=Read-Host -Prompt "Enter your github username: "
$defaultRepoDir = 'D:\Matts Stuff\my-git-repos'
$userRepoDir=read-host -prompt "Which directory do you want to save this in? (Default is D:\Matts Stuff\my-git-repos\"
#change to a path you want to have all your git projects in
if($userRepoDir -match ''){
   $repoDir=$defaultRepoDir
}
else{
   $repoDir = 'D:\Matts Stuff\my-git-repos'
}

cd $repoDir
if (Test-Path -Path "$repoDir\$repoName"){
    Write-Host "The given folder exists."
    exit
}
else {
    Write-Host "The given folder does not exist. Writing to repo..."
}

mkdir $repoDir\$repoName
cd $repoDir\$repoName
New-item -Path $repoDir\$repoName -Name "README.md" -ItemType "file"

git init
if(!(get-module powershellforgithub)){
   Install-module PowerShellforGitHub
   Set-GitHubAuthentication
}
New-GitHubRepository -RepositoryName $repoName

git remote add origin https://github.com/$username/$repoName.git

git branch -M main
git add . 
git commit -m "readme"
git push --set-upstream origin main



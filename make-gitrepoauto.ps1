$repoName=$args[0] 
$username=$args[1]
#change to a path you wwant to have all your git projects in
$repoDir = 'D:\Matts Stuff\my-git-repos'

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



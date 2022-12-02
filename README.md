<h1> Automation Scripts:</h1>

Description: A growing list of scripts that I am working on that automate tasks that I benefit from automating.

<h2> Directory Structure: </h2>
Navigate to the directory for your desired system. Use a <code> .ps1 </code> script for Windows and a <code> .sh </code> script for Linux.
I have also added scripts for <code> adb </code> that do various things to Android phones.

<h2> 1: Automatically Create a Git Repo </h2>
This script reqiures that you have <code> git</code> installed, which you may already have installed because you're here.

<h3> Instructions for use: </h3>
<ol>
   <li> Make sure your powershell execution policy is set to <code> RemoteSigned </code> or run <code> chmod +x git-repo-auto.sh </code> </li>
   <li> Run the <code> .\make-gitrepoauto</code> script for Windows or the <code> git-repo-auto.sh </code> script for Linux. </li>
   <li> Make a <a href="https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token"> personal access token </a> on github and paste it onto a safe and secure file and onto the terminal where you need to authenticate. You will need to authenticatte each time you use this program.</li>
   <li> Check your GitHub repo when it is finished creating. </li> 
</ol>

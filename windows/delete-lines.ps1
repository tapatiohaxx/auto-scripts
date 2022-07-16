<#
.Synopsis: Deletes the line numbers specified.
.Description: Deletes the line numbers specified. The line numbers are counted from the last line.
.EXAMPLE: delete-lines $file 0 3
#>

	Param(
        [Parameter(Mandatory=$true,Position=0)]
        
	    [String] $filePath,
		[Parameter(Mandatory=$true,Position=1)]        
	    [int] $beginLine,
        [Parameter(Position=2)]
		[int] $endLine
		)
        
if(!(Test-Path -Path $filePath)){
   Write-Host "This path does not exist"
   exit
}

$numLines = Get-Content $filePath | Measure-Object -Line

$lines = (Get-Content $filePath | Measure-Object)
if(($beginLine -gt $numLines.Lines) -or ($endLine -gt $numLines.Lines)){
   Write-Host "Too many Lines specified"
   exit
}
if(($endLine -lt $beginLine) -or ($endLine -eq $beginLine)){
   (Get-Content $filePath) | ? {($lines.count-$beginLine)-notcontains $_.ReadCount} | Set-Content $filePath
}
else{
   for($lineNum = $beginLine; $lineNum -le $endLine; $lineNum++){
     (Get-Content $filePath) | ? {($lines.count-$lineNum)-notcontains $_.ReadCount} | Set-Content $filePath
   }
}



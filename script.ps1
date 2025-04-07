#Write-Host "Hello World"
#Write-Host "This is a Test" -NoNewline

# install.ps1

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install VS Code
choco install vscode -y

# Install Notepad++
choco install notepadplusplus -y

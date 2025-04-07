# install.ps1

# Set PowerShell execution policy to bypass
Set-ExecutionPolicy Bypass -Scope Process -Force

# Ensure TLS 1.2 is used
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

# Install Chocolatey (if not already installed)
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Install Visual Studio Code
choco install vscode -y

# Install Notepad++
choco install notepadplusplus -y

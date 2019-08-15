@echo off
if not exist caddy (
echo wget 'https://caddyserver.com/download/windows/amd64?license=personal^&telemetry=off' -OutFile caddy.zip > install.ps1
echo Expand-Archive caddy.zip >> install.ps1
)
if not exist php (
echo wget https://windows.php.net/downloads/releases/php-7.3.8-nts-Win32-VC15-x64.zip -OutFile php.zip >> install.ps1
echo Expand-Archive php.zip >> install.ps1
)
if exist install.ps1 powershell -ExecutionPolicy Bypass %cd%\install.ps1
if exist install.ps1 del install.ps1
if exist caddy.zip del caddy.zip
if exist php.zip del php.zip
config.bat

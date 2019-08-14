@echo off
echo wget 'https://caddyserver.com/download/windows/amd64?license=personal^&telemetry=off' -OutFile caddy.zip > install.ps1
echo Expand-Archive caddy.zip >> install.ps1
echo wget https://windows.php.net/downloads/releases/php-7.3.8-nts-Win32-VC15-x64.zip -OutFile php.zip >> install.ps1
echo Expand-Archive php.zip >> install.ps1
powershell -ExecutionPolicy Bypass %cd%\install.ps1
del install.ps1
del caddy.zip
del php.zip

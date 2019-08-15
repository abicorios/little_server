@echo off
start /b php\php-cgi -b 127.0.0.1:9000
cd caddy
start /b caddy
cd ..
timeout 2
echo start is ok

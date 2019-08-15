@echo off
if not exist caddy\Caddyfile (
echo localhost:8000 > caddy\Caddyfile
echo fastcgi / 127.0.0.1:9000 php >> caddy\Caddyfile
mkdir public_html
echo root %cd%\public_html >> caddy\Caddyfile
)
if not exist php.ini (
copy php\php.ini-development php.ini
echo extension_dir = %cd%\php\ext >> php.ini
)

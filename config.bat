if not exist caddy\Caddyfile (
	echo localhost:8000 > caddy\Caddyfile
	echo fastcgi / 127.0.0.1:9000 php >> caddy\Caddyfile
)

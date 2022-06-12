up-round-robin:
	cp nginx_configs/round_robin.config nginx_configs/configs/nginx.config
	docker compose up

up-least-conn:
	cp nginx_configs/least_conn.config nginx_configs/configs/nginx.config
	docker compose up

up-ip-hash:
	cp nginx_configs/ip_hash.config nginx_configs/configs/nginx.config
	docker compose up

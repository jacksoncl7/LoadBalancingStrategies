up-round-robin:
	cp balancer/round_robin.conf balancer/configs/
	mv balancer/configs/round_robin.conf balancer/configs/nginx.conf
	docker compose up -d --build --remove-orphans

up-least-conn:
	cp balancer/least_conn.conf balancer/configs/
	mv balancer/configs/least_conn.conf balancer/configs/nginx.conf
	docker compose up -d --build --remove-orphans

up-ip-hash:
	cp balancer/ip_hash.conf balancer/configs/
	mv balancer/configs/ip_hash.conf balancer/configs/nginx.conf
	docker compose up -d --build --remove-orphans

down:
	docker compose down

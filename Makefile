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

run-load-test-to-csv:
	k6 run --out csv=loadtest/result/result-$(date +%F-%T).csv loadtest/first_scenario.js

down:
	docker compose down


new: build up

run:
	docker run --rm -it docker_cap_escape-yespriv /bin/bash

up:
	docker compose up

docker_daemon_start:
	sudo systemctl start docker

build:
	docker compose build
	#docker build -t image-name .


run_cap_sys_mod:
	sudo rmmod reverse-shell.ko || true
	echo to catch the reverse shell you can run: bash. /module/rshell.sh
	sleep 10
	make new
	sudo rmmod reverse-shell.ko || true



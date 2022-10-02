
new: run_sys_admin

#RUN_IMG = docker-linux-capabilities-breakout-sys_admin
RUN_IMG = docker-linux-capabilities-breakout-sys_module

run:
	docker run --rm -it $(RUN_IMG) /bin/bash

#up:
#	docker compose up

docker_daemon_start:
	sudo systemctl start docker

build:
	docker compose build
	#docker build -t image-name .


run_sys_module: build
	sudo rmmod reverse-shell.ko || true
	echo to catch the reverse shell you can run: bash. /sys_module/rshell.sh
	@echo PRESS ANY KEY
	@read dddd
	#make new
	docker compose up sys_module
	sudo rmmod reverse-shell.ko || true


run_sys_chroot: build
	docker compose up sys_chroot


run_sys_admin: build
	docker compose up sys_admin
	



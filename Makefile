install:
	sudo ./install.sh

uninstall:
	sudo ./uninstall.sh

build:
	gcc -o k480_conf k480_conf.c

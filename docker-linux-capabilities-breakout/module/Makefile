obj-m +=reverse-shell.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	#ls /lib/modules
	#ls /lib/modules/5.10.0-18-amd64

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

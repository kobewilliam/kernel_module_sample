obj-m += lkm_example.o

all:
	make -C ../lib/modules/4.19.152-tinycore64/build M=$(PWD) modules
clean:
	make -C ../lib/modules/4.19.152-tinycore64/build M=$(PWD) clean


test:
	sudo dmesg -C
	sudo insmod lkm_example.ko
	sudo rmmod lkm_example.ko
	dmesg

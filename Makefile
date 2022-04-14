
all:
	gcc -O2 build_ksyms.c -o build_ksyms
	wget https://raw.githubusercontent.com/torvalds/linux/master/scripts/extract-vmlinux -O extract-vmlinux.sh
	chmod +x extract-vmlinux.sh

clean:
	rm -rf build_ksyms extract-vmlinux.sh



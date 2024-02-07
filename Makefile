all:
	qemu-system-x86_64 -enable-kvm -smp 4 -boot d -m 2048 -hda srcs/mydisk.qcow2 -net nic -net user,hostfwd=tcp::4242-:4242
connect:
		ssh bpf@localhost -p 4242
down:
		@pkill -9 qemu-system-x86_64

download:
	mkdir -p srcs
	curl -o srcs/mydisk.qcow2 http://95.70.251.21/mydisk.qcow2
#mount:
#	pgrep -af qemu | awk '{print $1}' | xargs -I {} kill -9 {}
#	sudo modprobe nbd
#	sudo qemu-nbd -c /dev/nbd0 srcs/mydisk.qcow2
#	sudo mkdir $(PWD)/volume
#	sudo mount /dev/nbd0p3 $(PWD)/volume




.PHONY:	all connect down download
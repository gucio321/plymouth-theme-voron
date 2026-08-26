all: install

install: generate
	mkdir -p /usr/share/plymouth/themes/voron	
	install frames/* /usr/share/plymouth/themes/voron
	install voron.plymouth /usr/share/plymouth/themes/voron
	install voron.script /usr/share/plymouth/themes/voron
	install text.png /usr/share/plymouth/themes/voron

generate:
	rm -rf frames
	mkdir frames
	bash gen_frames.sh

uninstall:
	rm -rf /usr/share/plymouth/themes/voron

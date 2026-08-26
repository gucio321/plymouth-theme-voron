all: install

install:
	rm -rf frames
	mkdir frames
	bash gen_frames.sh
	install frames/* /usr/share/plymouth/themes/voron
	install voron.plymouth /usr/share/plymouth/themes/voron
	install voron.script /usr/share/plymouth/themes/voron
	install text.png /usr/share/plymouth/themes/voron

uninstall:
	rm -rf /usr/share/plymouth/themes/voron

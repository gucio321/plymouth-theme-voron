# Plymouth theme for @VoronDesign controller
## Installation
1. Clone the repository `git clone https://github.com/gucio321/plymouth-theme-voron`
2. Install the theme `sudo make install`
3. Set the theme `sudo plymouth-set-default-theme voron`
4. Regenerate the initramfs using your system's method (dracut, update-initramfs, mkinitcpio, e.t.c.)

One-line installation command **for armbian-like OS**:
```bash
git clone https://github.com/gucio321/plymouth-theme-voron; cd plymouth-theme-voron; sudo make install; sudo plymouth-set-default-theme voron; sudo update-initramfs -u
```

# xps9700_linux_utils

scripts and files to fix xps9700 on linux 

```
Linux pop-os 5.8.0-7630-generic #32~1605108806~20.10~7e52b13-Ubuntu SMP Wed Nov 11 19:10:30 UTC  x86_64 x86_64 x86_64 GNU/Linux
```


## Audio fix

Run
```
cd /tmp
git clone https://github.com/maaarghk/soundwire-dkms
git checkout latest-sofproject
sudo mv soundwire-dkms /usr/src/soundwire-1.4.0
sudo dkms add soundwire/1.4.0
sudo dkms build soundwire/1.4.0
sudo dkms install soundwire/1.4.0
```
And then copy the files in the `audio` directory to thier realitive system locations


Above commands and files found from [here](https://blog.fts.scot/2020/07/04/dell-xps-2020-how-to-get-audio-working-on-linux/)



## Fingerprint scanner

Use the `libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb` package in the `fingerprint` directory, if that doesnt work, try the other one. Note that that is only the driver, the other PAM auth stuff also has to be installed


## Add VNC Monitor

Scripts to create a virtual display to use pixel slate tablet (3000x200) as a second display

1. Copy the config file into place with the command `sudo cp vnc_display/30-virtscreen.conf /usr/share/X11/xorg.conf.d/`
1. Restart X11 via logout/in or reboot
1. Change `width` and `height` variables to match the VNC client resolution in `vnc_display/init_display.sh`
1. Run `./vnc_display/init_display.sh` to create the display

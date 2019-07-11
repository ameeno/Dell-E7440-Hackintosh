# Dell-E7440-Hackintosh


This Branch is for DELL Latitude E7440 with A25 bios system with the following specs:

Intel i5 4300U CPU 16Gb Ram DDR3 1600 SSD SAMSUNG SSD SM841 Intel HD4400 GPU Broadcom BCM94352HMB 802.11 ac + Bluetooth 4 Card
(Also known as AW-CE123H or DW1550)

What works:

Everything

# OS:
Use High sierra or Mojave.

Tested with 10.3.5-11
10.4.0-3

Working great.

To use: Simply Download the repository as a Zip file and extract to your EFI partition under the EFI Folder.

**DO THIS AFTER YOU HAVE ALREADY GOT A BOOTABLE CLOVER EFI INSTALLED**
otherwise you must set your laptop to boot from Clover in the Bios.
I will link a guide on how to do this in the future.

BTW, "inside the Kext - CopytoLE" folder,
copy these kexts into /Library/Extensions
on your Hackintosh after install is completed.

Next inside the Audio Folder: there is a alc_Fix zip file.

Unzip this to your Hackintosh Desktop (Or anywhere you like)
Then from terminal:
and run: sudo ./install.sh inside the folder, this will fix up hd audio verbs.
sudo ./install.sh (inside the alc_fix folder)

Then in terminal run the Clean&Rebuild script in this main folder.
from inside this repos folder do the following commands:
chmod +x permission-E7440.sh && ./permission-E7440.sh



Enjoy your Hackintosh!

#Sources:
OSXLatitude
Own Research
Lilu & Friends

## E7440 Throttling problem (Common issue)
A Common Issue that Dell e7440 Laptops suffer from is a throttling problem, where they are restricted and locked to just 800Mhz on the CPU.

This is not really a Hackintosh related issue, but a Laptop hardware issue, that is quite common to E7440's.
I personally have suffered from this, as have other users of the repository.

Fortunately, the Fix is rather simple, and just requires removing one screw from under the keyboard, which is a pointless screw, that doesn't seem to do anything but causes the CPU temperature sensor to lock the CPU down.

Thanks to user wtjin1992 who has posted a helpful YouTube video on how to fix the sensor.:

https://www.youtube.com/watch?v=00xRSqyGnks&t=2s


This does involve taking the laptop apart slightly to get underneath the keyboard, But since your here thinking about Hackintoshing your laptop in the first place, I don't think taking a mini screwdriver to the machine for a few minutes will scare you :)

Now on to the rest of the guide.


### Additional Guide

# E7440 - Hackintosh Guide

### Overview

- This guide references a few other guides. Credit for those guides is given to their respective owners.
- It is assumed that you have a decent understanding of Hackintosh, the macOS environment, as well as how to do basic computer tasks
- Will guide you through some of the different information needed to get macOS Mojave 10.14.2 working on your Latitude E7440/E7240
- Special thanks to evy0311 and his guide [Here](https://github.com/evy0311/t440p "Here") on how to configure the t440p for a Hackintosh install.
 Also a special thanks to [midi1996](https://github.com/midi1996) on GitHub for his guide on how to create the macOS installer from Recovery.

- I used this guide to do an easier write up for this laptop, especially the building your OSX installer Bit.

- **Note:** I am NOT responsible for any harm you cause to your device. This guide is provided "as-is" and all steps taken are done at your own risk

# Guide

![](https://github.com/ameeno/Dell-E7440-Hackintosh/raw/master/E7440.png)


## Information
##### What works:
- Power management/sleep
- Brightness Control
- Battery Information
- Audio (from internal speaker and headphone jack)
- USB Ports
- Graphics Acceleration
- Facetime/iMessage
- Trackpoint/Touchpad
- Pretty much everything except what is listed below
- miniDP -> VGA
- miniDP -> HDMI or DVI
- HDMI -> HDMI
- HDMI -> DVI
- Wi-Fi & Bluetooth (tested on AW-CE123H/ DW1320 AC card)

##### What Doesn't Work:
- As of right now, nothing! :)

**Note:** I am currently working on a fix for the items listed above. If you use this guide and information and find that something does not work, please submit an issue request so I can work on a fix.

## Creating the USB Installer
Since I don't have access to a legitimate Mac, I needed to be able to create a vanilla macOS installer. This guide (and many others) used to inform users to create a USB installer for a macOS Distro such as Niresh. While this may work just fine for then creating a vanilla macOS installer, distro's can be (and are) very shady. They come preloaded with a bunch of extra junk that is not needed, and just overall are *highly* advised against being used. Follow the steps below to figure out how to create a REAL macOS Mojave Vanilla installer without having access to a real Mac.

1. Follow the steps at this guide [Here](https://internet-install.gitbook.io/macos-internet-install/).
2. When you get to the part about installing Clover bootloader, follow the steps below for configuring kexts, etc. **INSTEAD** 
3. **IMPORTANT (DO NOT MISS THIS):** Now, copy Clover bootloader and the kexts files that you have downloaded to another USB drive (not the one you're burning the installer too) or an external hard drive. You will need access to them later.
4. Copy the `CLOVER & BOOT` folder's you have downloaded from this repository onto your USB drive as well.
5. Copy the `CLOVER` folder you have downloaded from this repository into `EFI/`. You can simply copy over the whole folder as the config.plist and everything else is already configured for the E7440/E7240. 
6. For more help on configuring Clover and the USB installer, the original guide linked in step 1 will be of the most help to you. Make sure you install the kexts and `CLOVER` folder from this repo onto your Clover USB, as these will guarantee your E7440/E7240 will work properly.
7. We are now ready to continue into the next topic: Installing macOS Mojave.



## Installing macOS Mojave
1. After you followed the guide above and have your USB drive ready to go, we can reboot the machine. When you reboot, enter into the BIOS to change some settings. On the E7440/E7240, you can do this by hitting `F12` at the Dell boot screen and choosing BIOS Setup.
2. Once in the BIOS, make sure you change the following settings. `Disable Security Chip`, `Disable Anti Theft Module`, and `Disable TPM`. Basically, disable all of the "security" features. Make sure Secure boot and other features like that are off. These features will affect how macOS sleeps, Choose UEFI and Legacy Boot.
3. Now, reboot into macOS and press `F12` select the USB drive inside of Clover.
4. Boot into macOS and install onto your hard drive using Ethernet/Wi-Fi from recovery. I recommend using an SSD.
5. After this is done, reboot the computer and let it sit. Mine rebooted a few times on its own to go through some final installation procedures.
6. Once you see the "region selection" screen, you are good to proceed.
7. Create your user account and everything else, but do not sign in with your iCloud account. If it asks you to connect to a network, select the option that says do not connect and press continue. We will connect it later.
8. After you've booted, plug in the USB drive or external hard drive that you copied the Clover file to in step 9 of the previous section. 
9. Install Clover bootloader following the same steps as before and using the same settings, except this time install them onto your internal hard drive with your Mojave installation. I recommend checking the box that says `Install Clover Configurator` as well (it comes in handy later).
10. We now need to copy our Clover configuration from our USB to our hard drive with Mojave. Simply copy the `CLOVER` folder and `EFI` folder in this repo  into the `EFI` partition that Clover should have mounted during install. 


## Post-Installation

1. Inside the Clover/kext/Other/CopytoLE folder, there are several Kexts which you should copy to your /Library/Extensions folder on your Hackintosh.
2. I recommend you use Clover Configurator to setup your own serial Number and MLB/UUID's to make them unique to you. This can be done easily using Clover Configurator.
3. Finally, run the included permission-E7440.sh file to repair permissions and fix up your system hibernation.


##### FHD Screen

If you have a full HD (1920x1080) screen (stock or modded), it is recommended that you install [One Key HiDPI](https://github.com/xzhih/one-key-hidpi "One Key HiDPI").  This will mimic the "retina" display feature that many of Apple's newer laptops come with.

##### Setting up Apple services (Facetime, iMessage, etc.)
I *highly* recommend following [This guide](https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/) to get these features working. It worked for me on the first try and was super straight forward compared to other guides that I have seen before in the past. 


## More to come...


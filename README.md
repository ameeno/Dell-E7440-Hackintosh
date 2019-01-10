# Dell-E7440-Hackintosh


This Branch is for DELL Latitude E7440 with A25 bios system with the following specs:

Intel i5 4300U CPU 16Gb Ram DDR3 1600 SSD SAMSUNG SSD SM841 Intel HD4400 GPU Broadcom BCM94352HMB 802.11 ac + Bluetooth4 Card
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
otherwise you must set your laptop to boot from clover in the Bios.
I will link a guide on how to do this in the future.

BTW, inside the kext/Other/CopytoLE folder,
copy these kexts into /Library/Extensions
on your Hack.

Then in terminal run the Clean&Rebuild script in this main folder.
from inside this repos folder do the following commands:
chmod +x permission-E7440.sh && ./permission-E7440.sh

Enjoy your Hackintosh!

#Sources:
OSXLatitude
Own Research
Lilu & Friends

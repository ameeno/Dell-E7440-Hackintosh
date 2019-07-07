#!/bin/bash

sudo echo 'Password Accepted: Fixing Kext Cache.'
sudo chmod -Rf 755 /L*/E*
sudo chown -Rf 0:0 /L*/E*
sudo touch -f /L*/E*
sudo chmod -Rf 755 /S*/L*/E*
sudo chown -Rf 0:0 /S*/L*/E*
sudo touch -f /S*/L*/E*
sudo kextcache -Boot -U /
sudo kextcache -i /
echo 'Done fixing kext cache'

echo 'Fixing sleep & Hibernate '
sudo pmset hibernatemode 0
sudo rm -f /var/vm/sleepimage
sudo pmset hibernatefile /dev/null
echo 'Done fixing hibernate'

exit 0
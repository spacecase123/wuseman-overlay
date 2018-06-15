![alt text](https://sendit.nu/f/9ym%21h%3FmGl42ctJ.png)

# README

   This is my personal Gentoo overlay for packages not added in portage tree and ebuilds I have not been able to find anywhere else


   All ebuilds have been commited by 'repoman -dx commit'..

# HOWTO

     Create wuseman-overlay.conf into /etc/portage/repos.conf/
     and add following info before you sync:

     [wuseman-overlay]
     # Simple example 'overlaid' ebuild repository
     location = /usr/local/portage/wuseman-overlay
     priority = 0
     auto-sync = no
     #masters-gentoo
-----------------------------------------------------------

     Now you need to:
     
     mkdir /usr/local/portage/metadata
     echo "masters = gentoo" > /usr/local/portage/metadata/layout.conf
     echo 'LOCAL_PORTDIR="/usr/local/portage"' >> /etc/portage/make.conf
     mkdir /usr/local/portage/wuseman-overlay
     cd /usr/local/portage
     git clone https://github.com/wuseman/wuseman-overlay
     emerge --sync

# TIPS

     Not this time ;p

# CONTACT

     If you have problems, questions, ideas or suggestions please contact
     us by posting to info@sendit.nu

# WEB SITE

     Visit our homepage for the latest info and updated tools

     https://sendit.nu & https://github.com/wuseman/

### END!


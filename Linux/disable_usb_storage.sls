##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state disables access to external USB storage on Linux by blocking the kernel modules.
Blacklist and fake install usb storage modules:
  file.managed:
    - name: /etc/modprobe.d/blacklist-usb-storage.conf
    - mode: 0644
    - contents: |
        install usb-storage /bin/true
        blacklist usb-storage
        blacklist uas

Ensure usb storage module is not loaded:
  cmd.run:
    - name: modprobe -r usb-storage
    - onlyif:
      - fun: kmod.is_loaded
        mod: usb-storage

Ensure uas module is not loaded:
  cmd.run:
    - name: modprobe -r uas
    - onlyif:
      - fun: kmod.is_loaded
        mod: uas

##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state enables access to external USB storage on Linux by unblocking the kernel modules.
Remove blacklist and fake install usb storage modules:
  file.absent:
    - name: /etc/modprobe.d/blacklist-usb-storage.conf

Ensure usb storage module is loaded:
  cmd.run:
    - name: modprobe -i usb-storage
    - unless:
      - fun: kmod.is_loaded
        mod: usb-storage

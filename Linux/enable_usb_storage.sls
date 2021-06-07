##os: ubuntu
################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

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

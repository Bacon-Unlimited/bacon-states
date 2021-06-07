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

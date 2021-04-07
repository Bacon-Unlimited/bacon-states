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

# This state enables write access to exteranl storage on macOS by removing the
# launch daemon and script.
Unload launch daemon:
  cmd.run:
    - name: launchctl unload -w /Library/LaunchDaemons/io.twe.usb_disabler.plist
    - onlyif: 
      - launchctl list io.twe.usb_disabler

Remove launch daemon to eject external drives:
  file.absent:
    - name: /Library/LaunchDaemons/io.twe.usb_disabler.plist

Remove script to eject external drives:
  file.absent:
    - name: /usr/local/bin/usb_disabler.sh

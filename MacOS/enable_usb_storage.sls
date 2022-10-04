##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

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

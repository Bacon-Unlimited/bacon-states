##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state disables Wi-Fi on macOS.
Disable Wi-Fi:
  cmd.run:
    - name: networksetup -setnetworkserviceenabled "Wi-Fi" off
    - unless:
      - networksetup -getnetworkserviceenabled "Wi-Fi" | grep Disabled

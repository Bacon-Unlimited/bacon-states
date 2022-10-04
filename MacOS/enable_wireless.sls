##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state enables Wi-Fi on macOS.
Enable Wi-Fi:
  cmd.run:
    - name: networksetup -setnetworkserviceenabled "Wi-Fi" on
    - unless:
      - networksetup -getnetworkserviceenabled "Wi-Fi" | grep Enabled

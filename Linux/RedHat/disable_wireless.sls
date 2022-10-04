##os: centos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state disables Wi-Fi on RedHat/CentOS.
Disable Wi-Fi:
  cmd.run:
    - name: nmcli radio wifi off
    - onlyif:
      - nmcli radio wifi | grep enabled

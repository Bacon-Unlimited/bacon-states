##os: centos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state enables Wi-Fi on RedHat/CentOS.
Enable Wi-Fi:
  cmd.run:
    - name: nmcli radio wifi on
    - onlyif:
      - nmcli radio wifi | grep disabled

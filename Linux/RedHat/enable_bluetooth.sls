##os: centos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state enables Bluetooth on RedHat/CentOS.
Enable Bluetooth:
  service.enabled:
    - name: bluetooth.service
    - onlyif:
      - fun: service.available
        name: bluetooth.service

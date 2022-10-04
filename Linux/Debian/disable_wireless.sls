##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state disables Wi-Fi on Debian/Ubuntu.
Ensure rfkill is installed to disable Wi-Fi:
  pkg.installed:
    - name: rfkill

Disable Wi-Fi:
  cmd.run:
    - name: rfkill block wifi
    - unless:
      - rfkill wifi --output SOFT | grep blocked
    - require:
      - pkg: Ensure rfkill is installed to disable Wi-Fi

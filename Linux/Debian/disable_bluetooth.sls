##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state disables Bluetooth on Debian/Ubuntu.
Ensure rfkill is installed to disable Bluetooth:
  pkg.installed:
    - name: rfkill

Disable Bluetooth:
  cmd.run:
    - name: rfkill block bluetooth
    - unless:
      - rfkill bluetooth --output SOFT | grep blocked
    - require:
      - pkg: Ensure rfkill is installed to disable Bluetooth

##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state disables Bluetooth on Windows by disabling the Bluetooth Support Service.
Disable_Bluetooth:
  # service.dead will make sure the service isn't running, and the enable parameter
  # allows us to make sure it's also disabled by passing False.
  # See documentation:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.service.html#salt.states.service.dead
  service.dead:
    - name: bthserv
    - enable: False

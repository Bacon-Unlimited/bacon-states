################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
## https://docs.saltproject.io/en/latest/ref/states/all/salt.states.win_powercfg.html
## AC settings are used when the system is on AC power. DC settings on battery power.
## This will change the current power scheme
## Setting value to 0 will set the timeout=Never. Timeout is in minutes

 hibernate:
    powercfg.set_timeout:
        - name: hibernate
        - value: 60
        - power: ac
 standby:
    powercfg.set_timeout:
        - name: standby
        - value: 60
        - power: ac
 monitor:
    powercfg.set_timeout:
        - name: monitor
        - value: 60
        - power: ac
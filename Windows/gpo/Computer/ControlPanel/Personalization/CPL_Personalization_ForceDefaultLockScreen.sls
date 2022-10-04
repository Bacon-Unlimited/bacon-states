################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
Force a specific default lock screen and logon image:
  lgpo.set:
    - setting:
        LockScreenImage: C:\\Users\\bacon\\MrsPiggy.jpg
        LockScreenOverlaysDisabled: False
    - policy_class: Machine

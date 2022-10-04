################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
Configure how often a DFS client discovers domain controllers:
  lgpo.set:
    - setting:
        DFSDiscoverDialog: 15
    - policy_class: Machine

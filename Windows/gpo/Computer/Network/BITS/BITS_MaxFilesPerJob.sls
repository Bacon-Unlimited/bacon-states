################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
Limit the maximum number of files allowed in a BITS job:
  lgpo.set:
    - setting:
        BITS_MaxFilesPerJobList: 200
    - policy_class: Machine

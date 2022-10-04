################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
Set default download behavior for BITS jobs on costed networks:
  lgpo.set:
    - setting:
        BITS_TransferPolicyForegroundPriorityValue: "Always transfer"
        BITS_TransferPolicyForegroundPriorityValueCustom: 255
        BITS_TransferPolicyHighPriorityValue: "Always transfer"
        BITS_TransferPolicyHighPriorityValueCustom: 255
        BITS_TransferPolicyNormalPriorityValue: "Always transfer"
        BITS_TransferPolicyNormalPriorityValueCustom: 255
        BITS_TransferPolicyLowPriorityValue: "Always transfer"
        BITS_TransferPolicyLowPriorityValueCustom: 255
    - policy_class: Machine

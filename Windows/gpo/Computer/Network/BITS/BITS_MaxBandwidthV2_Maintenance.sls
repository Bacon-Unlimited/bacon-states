################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
Set up a maintenance schedule to limit the maximum network bandwidth used for BITS background transfers:
  lgpo.set:
    - setting:
        BITS_MaintenanceDaysFrom: Monday
        BITS_MaintenanceDaysTo: Friday
        BITS_MaintenanceHoursFrom: "8 PM"
        BITS_MaintenanceHoursTo: "10 PM"
        BITS_MaintenanceHighPriorityLimit: 0
        BITS_MaintenanceHighPriorityUnit: Unlimited
        BITS_MaintenanceNormalPriorityLimit: 0
        BITS_MaintenanceNormalPriorityUnit: Unlimited
        BITS_MaintenanceLowPriorityLimit: 0
        BITS_MaintenanceLowPriorityUnit: Unlimited
    - policy_class: Machine

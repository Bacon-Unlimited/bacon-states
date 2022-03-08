Set up a work schedule to limit the maximum network bandwidth used for BITS background transfers:
  lgpo.set:
    - setting:
        BITS_IgnoreLimitsOnLan: False
        BITS_WorkDaysFrom: Monday
        BITS_WorkDaysTo: Friday
        BITS_WorkHoursFrom: "8 AM"
        BITS_WorkHoursTo: "5 PM"
        BITS_WorkHighPriorityLimit: 0
        BITS_WorkHighPriorityUnit: Unlimited
        BITS_WorkNormalPriorityLimit: 0
        BITS_WorkNormalPriorityUnit: Unlimited
        BITS_WorkLowPriorityLimit: 0
        BITS_WorkLowPriorityUnit: Unlimited
        BITS_NonWorkHighPriorityLimit: 0
        BITS_NonWorkHighPriorityUnit: Unlimited
        BITS_NonWorkNormalPriorityLimit: 0
        BITS_NonWorkNormalPriorityUnit: Unlimited
        BITS_NonWorkLowPriorityLimit: 0
        BITS_NonWorkLowPriorityUnit: Unlimited
    - policy_class: Machine

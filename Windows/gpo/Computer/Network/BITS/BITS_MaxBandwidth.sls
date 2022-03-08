Limit the maximum network bandwidth for BITS background transfers:
  lgpo.set:
    - setting:
        BITS_MaxTransferRateText: 10
        BITS_BandwidthLimitSchedFrom: "8 AM"
        BITS_BandwidthLimitSchedTo: "5 PM"
        BITS_UseSystemMaximum: True
        BITS_MaxTransferRateText_1: 20
    - policy_class: Machine

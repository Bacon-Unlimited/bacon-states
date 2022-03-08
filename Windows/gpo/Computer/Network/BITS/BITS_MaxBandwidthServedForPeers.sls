Limit the maximum network bandwidth used for Peercaching:
  lgpo.set:
    - setting:
        BITS_MaxBandwidthServedForPeersList: 1048576
    - policy_class: Machine

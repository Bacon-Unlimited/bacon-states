Limit the BITS Peercache size:
  lgpo.set:
    - setting:
        BITS_MaxSize: 1
    - policy_class: Machine

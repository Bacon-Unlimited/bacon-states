Do not allow the computer to act as a BITS Peercaching client:
  lgpo.set:
    - setting: Enabled
    - policy_class: Machine

Do not allow the computer to act as a BITS Peercaching server:
  lgpo.set:
    - setting: Enabled
    - policy_class: Machine

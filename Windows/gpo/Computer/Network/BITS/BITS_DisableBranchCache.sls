Do not allow the BITS client to use Windows Branch Cache:
  lgpo.set:
    - setting: Enabled
    - policy_class: Machine

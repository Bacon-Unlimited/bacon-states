Force a specific default lock screen and logon image:
  lgpo.set:
    - setting:
        LockScreenImage: C:\\Users\\bacon\\MrsPiggy.jpg
        LockScreenOverlaysDisabled: False
    - policy_class: Machine

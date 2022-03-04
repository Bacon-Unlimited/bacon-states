Force a specific default lock screen and logon image:
  lgpo.set:
    - name: CPL_Personalization_ForceDefaultLockScreen
    - setting:
        LockScreenImage: C:\\User\\bacon\\MrsPiggy.jpg
        LockScreenOverlaysDisabled: False
    - policy_class: Machine

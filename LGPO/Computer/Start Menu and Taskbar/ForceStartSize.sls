# windows:SUPPORTED_Windows_10_0_NOARM
#
# If you enable this policy and set it to Start menu or full screen Start, Start will be that size and users will be unable to change the size of Start in Settings. 
# 
# If you disable or don’t configure this policy setting, Windows will automatically select the size based on hardware form factor and users will be able to change the size of Start in Settings.
Force Start to be either full screen size or menu size:
  lgpo.set:
  - name: ForceStartSize
  - setting:
      ForceStartSizeDropdown: enum-placeholder
  - policy_class: Machine

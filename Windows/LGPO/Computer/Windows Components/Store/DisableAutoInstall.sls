# windows:SUPPORTED_Windows_6_3
#
# Enables or disables the automatic download and installation of app updates.
# 
# If you enable this setting, the automatic download and installation of app updates is turned off.
# 
# If you disable this setting, the automatic download and installation of app updates is turned on.
# 
# If you don't configure this setting, the automatic download and installation of app updates is determined by a registry setting that the user can change using Settings in the Microsoft Store.
Turn off Automatic Download and Install of updates:
  lgpo.set:
  - name: DisableAutoInstall
  - setting: Enabled
  - policy_class: Machine

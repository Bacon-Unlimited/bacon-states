# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Enables or disables the automatic download and update of map data.
# 
# If you enable this setting the automatic download and update of map data is turned off.
# 
# If you disable this setting the automatic download and update of map data is turned on.
# 
# If you don't configure this setting the automatic download and update of map data is determined by a registry setting that the user can change using Windows Settings.
Turn off Automatic Download and Update of Map Data:
  lgpo.set:
  - name: TurnOffAutoUpdate
  - setting: Enabled
  - policy_class: Machine

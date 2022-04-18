# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether anyone can interact with available networks UI on the logon screen.
# 
# If you enable this policy setting, the PC's network connectivity state cannot be changed without signing into Windows.
# 
# If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.
Do not display network selection UI:
  lgpo.set:
  - name: DontDisplayNetworkSelectionUI
  - setting: Enabled
  - policy_class: Machine

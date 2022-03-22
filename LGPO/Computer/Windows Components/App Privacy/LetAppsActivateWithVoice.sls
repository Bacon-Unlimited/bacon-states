# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether Windows apps can be activated by voice.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can be activated with a voice keyword by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, Windows apps are allowed to be activated with a voice keyword and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, Windows apps are not allowed to be activated with a voice keyword and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether Windows apps can be activated with a voice keyword by using Settings > Privacy on the device.
# 
# This policy is applied to Windows apps and Cortana.
#       
Let Windows apps activate with voice:
  lgpo.set:
  - name: LetAppsActivateWithVoice
  - setting:
      LetAppsActivateWithVoice_Enum: enum-placeholder
  - policy_class: Machine

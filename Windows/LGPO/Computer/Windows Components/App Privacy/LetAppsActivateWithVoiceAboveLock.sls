# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting specifies whether Windows apps can be activated by voice while the system is locked.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, users can interact with applications using speech while the system is locked and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, users cannot interact with applications using speech while the system is locked and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device.
# 
# This policy is applied to Windows apps and Cortana. It takes precedence of the Allow Cortana above lock policy. This policy is applicable only when Allow voice activation policy is configured to allow applications to be activated with voice.
#       
Let Windows apps activate with voice while the system is locked:
  lgpo.set:
  - name: LetAppsActivateWithVoiceAboveLock
  - setting:
      LetAppsActivateWithVoiceAboveLock_Enum: enum-placeholder
  - policy_class: Machine

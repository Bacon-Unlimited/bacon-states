# windows:SUPPORTED_Windows8
#
# This policy setting specifies that power management is disabled when the machine enters connected standby mode.
# 
# If this policy setting is enabled, Windows Connection Manager does not manage adapter radios to reduce power consumption when the machine enters connected standby mode.
# 
# If this policy setting is not configured or is disabled, power management is enabled when the machine enters connected standby mode.
#       
Disable power management in connected standby mode:
  lgpo.set:
  - name: WCM_DisablePowerManagement
  - setting: Enabled
  - policy_class: Machine

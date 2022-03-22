# windows:SUPPORTED_Windows7
#
# This policy setting configures whether or not a password can be used to unlock an Enhanced Storage device.
# 
# If you enable this policy setting, a password cannot be used to unlock an Enhanced Storage device.
# 
# If you disable or do not configure this policy setting, a password can be used to unlock an Enhanced Storage device.
Do not allow password authentication of Enhanced Storage devices:
  lgpo.set:
  - name: DisablePasswordAuthentication
  - setting: Enabled
  - policy_class: Machine

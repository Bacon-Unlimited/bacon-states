# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control whether a confirmation message is displayed when a smart card device driver is installed.
# 
# If you enable or do not configure this policy setting, a confirmation message will be displayed when a smart card device driver is installed.
# 
# If you disable this policy setting, a confirmation message will not be displayed when a smart card device driver is installed.
# 
# Note: This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.
Notify user of successful smart card driver installation:
  lgpo.set:
  - name: SCPnPNotification
  - setting: Enabled
  - policy_class: Machine

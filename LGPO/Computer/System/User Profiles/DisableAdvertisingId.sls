# windows:SUPPORTED_Windows_6_3
#
# This policy setting turns off the advertising ID, preventing apps from using the ID for experiences across apps.
# 
# If you enable this policy setting, the advertising ID is turned off. Apps can't use the ID for experiences across apps.
# 
# If you disable or do not configure this policy setting, users can control whether apps can use the advertising ID for experiences across apps.
#       
Turn off the advertising ID:
  lgpo.set:
  - name: DisableAdvertisingId
  - setting: Enabled
  - policy_class: Machine

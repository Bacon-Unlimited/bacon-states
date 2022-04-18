# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether Cortana is allowed on the device. 
# 
# If you enable or don't configure this setting, Cortana will be allowed on the device. If you disable this setting, Cortana will be turned off. 
# 
# When Cortana is off, users will still be able to use search to find things on the device.
Allow Cortana:
  lgpo.set:
  - name: AllowCortana
  - setting: Enabled
  - policy_class: Machine

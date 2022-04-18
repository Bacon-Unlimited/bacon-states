# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy allows the device name to be sent to Microsoft as part of Windows diagnostic data.
# 
# If you disable or do not configure this policy setting, then device name will not be sent to Microsoft as part of Windows diagnostic data.
#       
Allow device name to be sent in Windows diagnostic data:
  lgpo.set:
  - name: AllowDeviceNameInDiagnosticData
  - setting: Enabled
  - policy_class: Machine

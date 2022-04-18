# windows:SUPPORTED_Windows_10_0_RS7
#
# 
#           Allows IT admins to enable diagnostic data from this device to be processed by Windows Update for Business cloud. 
#             The following list shows the supported values:  
#               0 (default) Diagnostic data is not processed by Windows Update for Business cloud.. 
#               8  Diagnostic data is allowed to be processed by Windows Update for Business cloud.. 
#           If you disable or do not configure this policy setting, diagnostic data from this device will not be processed by Windows Update for Business cloud. 
#       
Allow WUfB Cloud Processing:
  lgpo.set:
  - name: AllowWUfBCloudProcessing
  - setting: Enabled
  - policy_class: Machine

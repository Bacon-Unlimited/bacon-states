# windows:SUPPORTED_Windows_10_0_RS7
#
# 
#           Allows IT admins to enable diagnostic data from this device to be processed by Desktop Analytics. 
#             The following list shows the supported values:  
#               0 (default) Diagnostic data is not processed by Desktop Analytics. 
#               2  Diagnostic data is allowed to be processed by Desktop Analytics. 
#           If you disable or do not configure this policy setting, diagnostic data from this device will not be processed by Desktop Analytics. 
#       
Allow Desktop Analytics Processing:
  lgpo.set:
  - name: AllowDesktopAnalyticsProcessing
  - setting: Enabled
  - policy_class: Machine

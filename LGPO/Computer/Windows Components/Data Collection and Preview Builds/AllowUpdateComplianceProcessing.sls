# windows:SUPPORTED_Windows_10_0_RS7
#
# 
#           Allows IT admins to enable diagnostic data from this device to be processed by Update Compliance. 
#             The following list shows the supported values:  
#               0 (default)– Diagnostic data is not processed by Update Compliance. 
#               16 – Diagnostic data is allowed to be processed by Update Compliance. 
#             If you disable or do not configure this policy setting, diagnostic data from this device will not be processed by Update Compliance.
#       
Allow Update Compliance Processing:
  lgpo.set:
  - name: AllowUpdateComplianceProcessing
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_Windows10
#
# 
#         Please follow the device control policy rules xml schema to fill out the policy rules data.
#     
Define device control policy rules:
  lgpo.set:
  - name: DeviceControl_PolicyRules
  - setting:
      DeviceControl_PolicyRules: text-placeholder
  - policy_class: Machine

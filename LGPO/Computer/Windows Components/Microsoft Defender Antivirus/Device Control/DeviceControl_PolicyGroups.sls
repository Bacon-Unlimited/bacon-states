# windows:SUPPORTED_Windows10
#
# 
#         Please follow the device control policy groups xml schema to fill out the policy groups data.
#     
Define device control policy groups:
  lgpo.set:
  - name: DeviceControl_PolicyGroups
  - setting:
      DeviceControl_PolicyGroups: text-placeholder
  - policy_class: Machine

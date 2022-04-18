# windows:SUPPORTED_Windows_10_0
#
# 
#                 This policy setting allow the use of Camera devices on the machine.
# 
#         If you enable or do not configure this policy setting, Camera devices will be enabled.
#         
#         If you disable this property setting, Camera devices will be disabled.
#             
Allow Use of Camera:
  lgpo.set:
  - name: L_AllowCamera
  - setting: Enabled
  - policy_class: Machine

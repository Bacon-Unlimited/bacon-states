# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy specifies whether users on the device have the option to enable online speech recognition services.
#         
#         If this policy is enabled or not configured, control is deferred to users, and users may choose whether to enable speech services via settings.
#         
#         If this policy is disabled, speech services will be disabled, and users cannot enable speech services via settings.
#       
Allow users to enable online speech recognition services:
  lgpo.set:
  - name: AllowInputPersonalization
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Hide notifications from Windows Security.
#         
#         Enabled:
#         Local users will not see notifications from Windows Security.
#         
#         Disabled:
#         Local users can see notifications from Windows Security.
#         
#         Not configured:
#         Same as Disabled.
#     
Hide all notifications:
  lgpo.set:
  - name: Notifications_DisableNotifications
  - setting: Enabled
  - policy_class: Machine

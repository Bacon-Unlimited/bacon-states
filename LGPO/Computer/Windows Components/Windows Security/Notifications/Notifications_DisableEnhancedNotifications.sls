# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Only show critical notifications from Windows Security.
# 
#         If the Suppress all notifications GP setting has been enabled, this setting will have no effect.
# 
#         Enabled:
#         Local users will only see critical notifications from Windows Security. They will not see other types of notifications, such as regular PC or device health information.
# 
#         Disabled:
#         Local users will see all types of notifications from Windows Security.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide non-critical notifications:
  lgpo.set:
  - name: Notifications_DisableEnhancedNotifications
  - setting: Enabled
  - policy_class: Machine

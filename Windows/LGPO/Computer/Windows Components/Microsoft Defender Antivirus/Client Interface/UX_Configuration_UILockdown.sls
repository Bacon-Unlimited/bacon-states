# windows:SUPPORTED_WindowsVista
#
# 
#         This policy setting allows you to configure whether or not to display AM UI to the users.
#         If you enable this setting AM UI won't be available to users.
#     
Enable headless UI mode:
  lgpo.set:
  - name: UX_Configuration_UILockdown
  - setting: Enabled
  - policy_class: Machine

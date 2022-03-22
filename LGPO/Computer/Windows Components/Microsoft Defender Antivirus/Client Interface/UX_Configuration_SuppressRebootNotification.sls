# windows:SUPPORTED_WindowsVista
#
# 
#       This policy setting allows user to supress reboot notifications in UI only mode (for cases where UI can't be in lockdown mode).
# 
#       If you enable this setting AM UI won't show reboot notifications.
#     
Suppresses reboot notifications:
  lgpo.set:
  - name: UX_Configuration_SuppressRebootNotification
  - setting: Enabled
  - policy_class: Machine

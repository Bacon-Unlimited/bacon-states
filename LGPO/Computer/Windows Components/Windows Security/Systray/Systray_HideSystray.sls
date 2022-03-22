# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#         This policy setting hides the Windows Security notification area control.
# 
#         The user needs to either sign out and sign in or reboot the computer for this setting to take effect.
# 
#         Enabled:
#         Windows Security notification area control will be hidden.
# 
#         Disabled:
#         Windows Security notification area control will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide Windows Security Systray:
  lgpo.set:
  - name: Systray_HideSystray
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to manage whether users can manually remove the zone information from saved file attachments by clicking the Unblock button in the file's property sheet or by using a check box in the security warning dialog. Removing the zone information allows users to open potentially dangerous file attachments that Windows has blocked users from opening.
# 
# If you enable this policy setting, Windows hides the check box and Unblock button.
# 
# If you disable this policy setting, Windows shows the check box and Unblock button.
# 
# If you do not configure this policy setting, Windows hides the check box and Unblock button.
Hide mechanisms to remove zone information:
  lgpo.set:
  - name: AM_RemoveZoneInfo
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_WindowsVistaOnly
#
# This policy setting prevents the display of the Welcome Center at user logon.
# 
# If you enable this policy setting, the Welcome Center is not displayed at user logon. The user can access the Welcome Center using the Control Panel or Start menu.
# 
# If you disable or do not configure this policy setting, the Welcome Center is displayed at user logon.
Do not display the Welcome Center at user logon:
  lgpo.set:
  - name: RestrictWelcomeCenter
  - setting: Enabled
  - policy_class: User

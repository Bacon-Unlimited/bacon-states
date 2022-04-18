# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off Windows Mobility Center.
# 
# If you enable this policy setting, the user is unable to invoke Windows Mobility Center. The Windows Mobility Center UI is removed from all shell entry points and the .exe file does not launch it.
# 
# If you disable this policy setting, the user is able to invoke Windows Mobility Center and the .exe file launches it.
# 
# If you do not configure this policy setting, Windows Mobility Center is on by default.
Turn off Windows Mobility Center:
  lgpo.set:
  - name: MobilityCenterEnable_1
  - setting: Enabled
  - policy_class: User

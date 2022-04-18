# windows:SUPPORTED_WindowsXPSP2
#
# Prevents Windows Defender Firewall from displaying notifications to the user when a program requests that Windows Defender Firewall add the program to the program exceptions list.
# 
# If you enable this policy setting, Windows Defender Firewall prevents the display of these notifications.
# 
# If you disable this policy setting, Windows Defender Firewall allows the display of these notifications. In the Windows Defender Firewall component of Control Panel, the "Notify me when Windows Defender Firewall blocks a new program" check box is selected and administrators cannot clear it.
# 
# If you do not configure this policy setting, Windows Defender Firewall behaves as if the policy setting were disabled, except that in the Windows Defender Firewall component of Control Panel, the "Notify me when Windows Defender Firewall blocks a new program" check box is selected by default, and administrators can change it.
'Windows Defender Firewall: Prohibit notifications':
  lgpo.set:
  - name: WF_Notifications_Name_1
  - setting: Enabled
  - policy_class: Machine

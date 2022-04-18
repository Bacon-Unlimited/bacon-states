# windows:SUPPORTED_WindowsXPSP2
#
# Specifies that Windows Defender Firewall blocks all unsolicited incoming messages. This policy setting overrides all other Windows Defender Firewall policy settings that allow such messages.
# 
# If you enable this policy setting, in the Windows Defender Firewall component of Control Panel, the "Block all incoming connections" check box is selected and administrators cannot clear it. You should also enable the "Windows Defender Firewall: Protect all network connections" policy setting; otherwise, administrators who log on locally can work around the "Windows Defender Firewall: Do not allow exceptions" policy setting by turning off the firewall.
# 
# If you disable this policy setting, Windows Defender Firewall applies other policy settings that allow unsolicited incoming messages. In the Windows Defender Firewall component of Control Panel, the "Block all incoming connections" check box is cleared and administrators cannot select it.
# 
# If you do not configure this policy setting, Windows Defender Firewall applies other policy settings that allow unsolicited incoming messages. In the Windows Defender Firewall component of Control Panel, the "Block all incoming connections" check box is cleared by default, but administrators can change it.
'Windows Defender Firewall: Do not allow exceptions':
  lgpo.set:
  - name: WF_EnableShield_Name_2
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_WindowsXPSP2
#
# Turns on Windows Defender Firewall.
# 
# If you enable this policy setting, Windows Defender Firewall runs and ignores the "Computer Configuration\Administrative Templates\Network\Network Connections\Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting.
# 
# If you disable this policy setting, Windows Defender Firewall does not run. This is the only way to ensure that Windows Defender Firewall does not run and administrators who log on locally cannot start it.
# 
# If you do not configure this policy setting, administrators can use the Windows Defender Firewall component in Control Panel to turn Windows Defender Firewall on or off, unless the "Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting overrides.
'Windows Defender Firewall: Protect all network connections':
  lgpo.set:
  - name: WF_EnableFirewall_Name_1
  - setting: Enabled
  - policy_class: Machine

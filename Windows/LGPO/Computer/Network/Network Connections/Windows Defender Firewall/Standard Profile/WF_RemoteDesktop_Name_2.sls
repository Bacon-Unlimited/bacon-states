# windows:SUPPORTED_WindowsXPSP2
#
# Allows this computer to receive inbound Remote Desktop requests. To do this, Windows Defender Firewall opens TCP port 3389.
# 
# If you enable this policy setting, Windows Defender Firewall opens this port so that this computer can receive Remote Desktop requests. You must specify the IP addresses or subnets from which these incoming messages are allowed. In the Windows Defender Firewall component of Control Panel, the "Remote Desktop" check box is selected and administrators cannot clear it.
# 
# If you disable this policy setting, Windows Defender Firewall blocks this port, which prevents this computer from receiving Remote Desktop requests. If an administrator attempts to open this port by adding it to a local port exceptions list, Windows Defender Firewall does not open the port. In the Windows Defender Firewall component of Control Panel, the "Remote Desktop" check box is cleared and administrators cannot select it.
# 
# If you do not configure this policy setting, Windows Defender Firewall does not open this port. Therefore, the computer cannot receive Remote Desktop requests unless an administrator uses other policy settings to open the port. In the Windows Defender Firewall component of Control Panel, the "Remote Desktop" check box is cleared. Administrators can change this check box."
'Windows Defender Firewall: Allow inbound Remote Desktop exceptions':
  lgpo.set:
  - name: WF_RemoteDesktop_Name_2
  - setting:
      WF_Scope_Name: text-placeholder
  - policy_class: Machine

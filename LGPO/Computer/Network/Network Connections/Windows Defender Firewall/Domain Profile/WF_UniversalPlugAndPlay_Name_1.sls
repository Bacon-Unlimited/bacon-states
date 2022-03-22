# windows:SUPPORTED_WindowsXPSP2
#
# Allows this computer to receive unsolicited inbound Plug and Play messages sent by network devices, such as routers with built-in firewalls. To do this, Windows Defender Firewall opens TCP port 2869 and UDP port 1900.
# 
# If you enable this policy setting, Windows Defender Firewall opens these ports so that this computer can receive Plug and Play messages. You must specify the IP addresses or subnets from which these incoming messages are allowed. In the Windows Defender Firewall component of Control Panel, the "UPnP framework" check box is selected and administrators cannot clear it.
# 
# If you disable this policy setting, Windows Defender Firewall blocks these ports, which prevents this computer from receiving Plug and Play messages. If an administrator attempts to open these ports by adding them to a local port exceptions list, Windows Defender Firewall does not open the ports. In the Windows Defender Firewall component of Control Panel, the "UPnP framework" check box is cleared and administrators cannot select it.
# 
# If you do not configure this policy setting, Windows Defender Firewall does not open these ports. Therefore, the computer cannot receive Plug and Play messages unless an administrator uses other policy settings to open the required ports or enable the required programs. In the Windows Defender Firewall component of Control Panel, the "UPnP framework" check box is cleared. Administrators can change this check box."
'Windows Defender Firewall: Allow inbound UPnP framework exceptions':
  lgpo.set:
  - name: WF_UniversalPlugAndPlay_Name_1
  - setting:
      WF_Scope_Name: text-placeholder
  - policy_class: Machine

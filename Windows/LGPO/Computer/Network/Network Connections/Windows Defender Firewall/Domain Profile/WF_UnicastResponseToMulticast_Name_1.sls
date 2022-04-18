# windows:SUPPORTED_WindowsXPSP2
#
# Prevents this computer from receiving unicast responses to its outgoing multicast or broadcast messages.
# 
# If you enable this policy setting, and this computer sends multicast or broadcast messages to other computers, Windows Defender Firewall blocks the unicast responses sent by those other computers.
# 
# If you disable or do not configure this policy setting, and this computer sends a multicast or broadcast message to other computers, Windows Defender Firewall waits as long as three seconds for unicast responses from the other computers and then blocks all later responses.
# 
# Note: This policy setting has no effect if the unicast message is a response to a Dynamic Host Configuration Protocol (DHCP) broadcast message sent by this computer. Windows Defender Firewall always permits those DHCP unicast responses. However, this policy setting can interfere with the NetBIOS messages that detect name conflicts.
'Windows Defender Firewall: Prohibit unicast response to multicast or broadcast requests':
  lgpo.set:
  - name: WF_UnicastResponseToMulticast_Name_1
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_WindowsXP
#
# This policy setting allows trap configuration for the Simple Network Management Protocol (SNMP) agent.
# 
# Simple Network Management Protocol is a protocol designed to give a user the capability to remotely manage a computer network by polling and setting terminal values and monitoring network events.
# 
# This policy setting allows you to configure the name of the hosts that receive trap messages for the community sent by the SNMP service. A trap message is an alert or significant event that allows the SNMP agent to notify management systems asynchronously.
# 
# If you enable this policy setting, the SNMP service sends trap messages to the hosts within the "public" community.
# 
# If you disable or do not configure this policy setting, the SNMP service takes the trap configuration configured on the local computer instead.
# 
# Note: This setting has no effect if the SNMP agent is not installed on the client computer.
# 
# Also, see the other two SNMP settings: "Specify permitted managers" and "Specify Community Name".
Specify traps for public community:
  lgpo.set:
  - name: SNMP_Traps_Public
  - setting:
      SNMP_Traps_PublicListbox:
      - placeholder1
      - placeholder2
  - policy_class: Machine

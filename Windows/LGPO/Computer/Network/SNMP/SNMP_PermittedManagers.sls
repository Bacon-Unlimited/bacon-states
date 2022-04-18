# windows:SUPPORTED_WindowsXP
#
# This policy setting determines the permitted list of hosts that can submit a query to the Simple Network Management (SNMP) agent running on the client computer.
# 
# Simple Network Management Protocol is a protocol designed to give a user the capability to remotely manage a computer network by polling and setting terminal values and monitoring network events.
# 
# The manager is located on the host computer on the network. The manager's role is to poll the agents for certain requested information.
# 
# If you enable this policy setting, the SNMP agent only accepts requests from the list of permitted managers that you configure using this setting.
# 
# If you disable or do not configure this policy setting, SNMP service takes the permitted managers configured on the local computer instead.
# 
# Best practice: For security purposes, it is recommended to restrict the HKLM\SOFTWARE\Policies\SNMP\Parameters\PermittedManagers key to allow only the local admin group full control.
# 
# Note: This policy setting has no effect if the SNMP agent is not installed on the client computer.
# 
# Also, see the other two SNMP policy settings: "Specify trap configuration" and "Specify Community Name".
Specify permitted managers:
  lgpo.set:
  - name: SNMP_PermittedManagers
  - setting:
      SNMP_PermittedManagersListbox:
      - placeholder1
      - placeholder2
  - policy_class: Machine

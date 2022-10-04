####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Network\SNMP\SNMP_PermittedManagers.sls
#
# SUPPORTED WINDOWS OS
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

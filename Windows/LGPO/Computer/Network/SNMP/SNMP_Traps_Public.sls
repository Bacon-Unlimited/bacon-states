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
# LOCATION: \Computer\Network\SNMP\SNMP_Traps_Public.sls
#
# SUPPORTED WINDOWS OS
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

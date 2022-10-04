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
# LOCATION: \Computer\Network\SNMP\SNMP_Communities.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting configures a list of the communities defined to the Simple Network Management Protocol (SNMP) service.
# 
# SNMP is a protocol designed to give a user the capability to remotely manage a computer network, by polling and setting terminal values and monitoring network events.
# 
# A valid community is a community recognized by the SNMP service, while a community is a group of hosts (servers, workstations, hubs, and routers) that are administered together by SNMP. The SNMP service is a managed network node that receives SNMP packets from the network.
# 
# If you enable this policy setting, the SNMP agent only accepts requests from management systems within the communities it recognizes, and only SNMP Read operation is allowed for the community.
# 
# If you disable or do not configure this policy setting, the SNMP service takes the Valid Communities configured on the local computer instead.
# 
# Best practice: For security purposes, it is recommended to restrict the HKLM\SOFTWARE\Policies\SNMP\Parameters\ValidCommunities key to allow only the local admin group full control.
# 
# Note: It is good practice to use a cryptic community name.
# 
# Note: This policy setting has no effect if the SNMP agent is not installed on the client computer.
# 
# Also, see the other two SNMP settings: "Specify permitted managers" and "Specify trap configuration".
Specify communities:
  lgpo.set:
  - name: SNMP_Communities
  - setting:
      SNMP_CommunitiesListbox:
      - placeholder1
      - placeholder2
  - policy_class: Machine

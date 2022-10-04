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
# LOCATION: \Computer\Network\QoS Packet Scheduler\DSCP value of non-conforming packets\QosServiceTypeQualitative_NC.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Qualitative service type (ServiceTypeQualitative). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.
# 
# This setting applies only to packets that do not conform to the flow specification.
# 
# If you enable this setting, you can change the default DSCP value associated with the Qualitative service type.
# 
# If you disable this setting, the system uses the default DSCP value of 0.
# 
# Important: If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Qualitative service type:
  lgpo.set:
  - name: QosServiceTypeQualitative_NC
  - setting:
      QosDSCPValue: decimal-placeholder
  - policy_class: Machine

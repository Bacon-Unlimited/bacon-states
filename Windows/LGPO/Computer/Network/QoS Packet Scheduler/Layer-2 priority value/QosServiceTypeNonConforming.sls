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
# LOCATION: \Computer\Network\QoS Packet Scheduler\Layer-2 priority value\QosServiceTypeNonConforming.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate link layer (Layer-2) priority value for packets that do not conform to the flow specification. The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.
# 
# If you enable this setting, you can change the default priority value associated with nonconforming packets.
# 
# If you disable this setting, the system uses the default priority value of 0.
# 
# Important: If the Layer-2 priority value for nonconforming packets is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Non-conforming packets:
  lgpo.set:
  - name: QosServiceTypeNonConforming
  - setting:
      QosPriorityValue: decimal-placeholder
  - policy_class: Machine

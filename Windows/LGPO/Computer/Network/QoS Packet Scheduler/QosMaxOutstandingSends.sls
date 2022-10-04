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
# LOCATION: \Computer\Network\QoS Packet Scheduler\QosMaxOutstandingSends.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies the maximum number of outstanding packets permitted on the system. When the number of outstanding packets reaches this limit, the Packet Scheduler postpones all submissions to network adapters until the number falls below this limit.
# 
# "Outstanding packets" are packets that the Packet Scheduler has submitted to a network adapter for transmission, but which have not yet been sent.
# 
# If you enable this setting, you can limit the number of outstanding packets.
# 
# If you disable this setting or do not configure it, then the setting has no effect on the system.
# 
# Important: If the maximum number of outstanding packets is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Limit outstanding packets:
  lgpo.set:
  - name: QosMaxOutstandingSends
  - setting:
      QosMaxOutstandingSends_Box: decimal-placeholder
  - policy_class: Machine

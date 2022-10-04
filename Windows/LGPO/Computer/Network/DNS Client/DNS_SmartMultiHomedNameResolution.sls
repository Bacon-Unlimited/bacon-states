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
# LOCATION: \Computer\Network\DNS Client\DNS_SmartMultiHomedNameResolution.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Specifies that a multi-homed DNS client should optimize name resolution across networks.  The setting improves performance by issuing parallel DNS, link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT) queries across all networks. In the event that multiple positive responses are received, the network binding order is used to determine which response to accept.
# 
# If you enable this policy setting, the DNS client will not perform any optimizations.  DNS queries will be issued across all networks first. LLMNR queries will be issued if the DNS queries fail, followed by NetBT queries if LLMNR queries fail.
# 
# If you disable this policy setting, or if you do not configure this policy setting, name resolution will be optimized when issuing DNS, LLMNR and NetBT queries.
Turn off smart multi-homed name resolution:
  lgpo.set:
  - name: DNS_SmartMultiHomedNameResolution
  - setting: Enabled
  - policy_class: Machine

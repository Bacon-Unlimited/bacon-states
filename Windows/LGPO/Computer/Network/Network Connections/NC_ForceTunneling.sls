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
# LOCATION: \Computer\Network\Network Connections\NC_ForceTunneling.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting determines whether a remote client computer  routes Internet traffic through the internal network or whether the client accesses the Internet directly.
# 
# When a remote client computer connects to an internal network using DirectAccess, it can access the Internet in two ways: through the secure tunnel that DirectAccess establishes between the computer and the internal network, or directly through the local default gateway.
# 
# If you enable this policy setting, all traffic between a remote client computer running DirectAccess and the Internet is routed through the internal network.
# 
# If you disable this policy setting, traffic between remote client computers running DirectAccess and the Internet is not routed through the internal network.
# 
# If you do not configure this policy setting, traffic between remote client computers running DirectAccess and the Internet is not routed through the internal network.
Route all traffic through the internal network:
  lgpo.set:
  - name: NC_ForceTunneling
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine

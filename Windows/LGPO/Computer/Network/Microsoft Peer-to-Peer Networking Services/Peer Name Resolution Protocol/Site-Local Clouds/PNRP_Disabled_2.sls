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
# LOCATION: \Computer\Network\Microsoft Peer-to-Peer Networking Services\Peer Name Resolution Protocol\Site-Local Clouds\PNRP_Disabled_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting enables or disables PNRP cloud creation.
# 
# PNRP is a distributed name resolution protocol allowing Internet hosts to publish peer names with a corresponding Internet Protocol version 6 (IPv6) address. Other hosts can then resolve the name, retrieve the corresponding address, and establish peer-to-peer (P2P) connections. The PNRP cloud is a group of connected PNRP nodes, in which connections exist between peers so that a node in the PNRP cloud can resolve names published by other nodes.
# 
# PNRP creates a global cloud if the computer has a global IPv6 address, but creates a site-local cloud if the computer has a site-local address.
# 
# If you enable this policy setting, PNRP does not create a cloud, and applications cannot use this cloud to publish or resolve names regardless of whether the computer has an IPv6 address that matches the cloud scope.
# 
# If you disable or do not configure this policy setting, all PNRP clouds are turned on by default, and PNRP creates a cloud if the computer has an IPv6 address compatible with the clouds scope.
# 
Turn off PNRP cloud creation:
  lgpo.set:
  - name: PNRP_Disabled_2
  - setting: Enabled
  - policy_class: Machine

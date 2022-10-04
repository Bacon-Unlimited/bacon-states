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
# LOCATION: \Computer\Network\Microsoft Peer-to-Peer Networking Services\Peer Name Resolution Protocol\Site-Local Clouds\PNRP_SearchOnly_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting limits a node to resolving, but not publishing, names in a specific Peer Name Resolution Protocol (PNRP) cloud.
# 
# This policy setting forces computers to act as clients in peer-to-peer (P2P) scenarios. For example, a client computer can detect other computers to initiate chat sessions, but other computers cannot detect that client and initiate sessions with it.
# 
# If you enable this policy setting, this computer cannot register PNRP names, and cannot help other computers perform PNRP lookups.
# 
# If you disable or do not configure this policy setting, this computer can publish PNRP names and help other computers perform PNRP lookups.
# 
Set PNRP cloud to resolve only:
  lgpo.set:
  - name: PNRP_SearchOnly_2
  - setting: Enabled
  - policy_class: Machine

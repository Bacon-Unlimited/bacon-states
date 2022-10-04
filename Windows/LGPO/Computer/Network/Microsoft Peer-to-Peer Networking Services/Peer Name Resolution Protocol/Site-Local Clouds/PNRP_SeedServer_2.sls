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
# LOCATION: \Computer\Network\Microsoft Peer-to-Peer Networking Services\Peer Name Resolution Protocol\Site-Local Clouds\PNRP_SeedServer_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This setting sets the seed server for the site local cloud to a specified node in the enterprise.
# 
# The Peer Name Resolution Protocol (PNRP) allows for distributed resolution of a name to an IPV6 address and port number. The protocol, in some cases, requires a seed server from which to get bootstrapped. This setting allows for setting the seed server to a specified node in an enterprise.
# 
# To use this setting, click Enable, and then enter a semicolon-delimited list of DNS names or IPV6 addresses in the available field. If you enable this setting and you dont enter any address, no seed server will be used.
# 
# If this setting is not configured, the protocol will revert to using a public registry key to determine the seed server to bootstrap from.
Set the Seed Server:
  lgpo.set:
  - name: PNRP_SeedServer_2
  - setting:
      PNRP_SeedServer_Name: text-placeholder
  - policy_class: Machine

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
# LOCATION: \Computer\Network\Microsoft Peer-to-Peer Networking Services\Peer Name Resolution Protocol\Global Clouds\PNRP_SeedServer_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This setting sets the seed server for the global cloud to a specified node in the enterprise. The Peer Name Resolution Protocol (PNRP) allows for distributed resolution of a name to an IPv6 address and port number. The protocol, in some cases, requires a seed server from which to get bootstrapped.
# 
# Any node running peer to peer can be used as a seed server. No configuration is needed for the seed server itself.
# 
# This setting provides the added flexibility of allowing your users to use their peer-to-peer applications at home as well. Here are the four ways in which you can use this setting to control the seed server used in your corporation.
# 
# 1. In order to use the global, well known seed server on the Internet only; enable the setting, leave the seed server list empty, leave the checkbox unchecked.
# 
# 2. In order to use a corporate seed server only, enable the setting; insert the fully qualified domain name or IPv6 address of the corporate seed server; and check the checkbox. Using the corporate seed server only will prevent your mobile users from being able to use their peer to peer applications at home.
# 
# 3. In order to use a corporate seed server and the global seed server, enable the setting; insert the fully qualified domain name or IPv6 address of the corporate seed server, leave the checkbox unchecked. This is the setting which will allow your mobile users to use peer to peer applications at both work and home seamlessly.
# 
# 4. In order to not use any seed server, enable the setting; do not insert a seed server name; and check the check box.
# 
# If this setting is disabled or not configured, the protocol will revert to using a public registry key to determine the seed server to bootstrap from.
Set the Seed Server:
  lgpo.set:
  - name: PNRP_SeedServer_1
  - setting:
      PNRP_Dont_Include_Microsoft_SeedServer: boolean-placeholder
      PNRP_SeedServer_Name: text-placeholder
  - policy_class: Machine

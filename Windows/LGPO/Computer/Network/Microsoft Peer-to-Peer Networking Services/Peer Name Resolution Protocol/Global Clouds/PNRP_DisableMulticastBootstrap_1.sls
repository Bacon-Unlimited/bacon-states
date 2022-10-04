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
# LOCATION: \Computer\Network\Microsoft Peer-to-Peer Networking Services\Peer Name Resolution Protocol\Global Clouds\PNRP_DisableMulticastBootstrap_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This setting disables PNRP protocol from advertising the computer or from searching other computers on the local subnet in the global cloud.
# 
# The Peer Name Resolution Protocol (PNRP) allows for distributed resolution of a name to an IPV6 address and port number. One of the ways in which PNRP bootstraps itself is by using multicast on the same subnet. That is, PNRP publishes itself on the local subnet, so that other computers can find it when needed.
# 
# If you enable this setting, PNRP will not use multicast for bootstrapping. Specifying this registry key will break scenarios where there is no seed server for bootstrap (such as ad hoc networking scenarios).
# 
# If you disable this setting, PNRP will use multicast for bootstrapping on the same subnet.
# 
# If this setting is not configured, the protocol will revert to using a public registry key to determine whether it will publish the computer or will use multicast to search for other computers on the local subnet.
# 
# The multicast protocol used for bootstrapping is SSDP (Simple Service Discovery Protocol). The SSDP service must be enabled (which it is by default) for this policy to have effect.
Turn off Multicast Bootstrap:
  lgpo.set:
  - name: PNRP_DisableMulticastBootstrap_1
  - setting: Enabled
  - policy_class: Machine

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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\6to4_State.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure 6to4, an address assignment and router-to-router automatic tunneling technology that is used to provide unicast IPv6 connectivity between IPv6 sites and hosts across the IPv4 Internet. 6to4 uses the global address prefix: 2002:WWXX:YYZZ::/48 in which the letters are a hexadecimal representation of the global IPv4 address (w.x.y.z) assigned to a site.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# If you enable this policy setting, you can configure 6to4 with one of the following settings:
# 
# Policy Default State: 6to4 is enabled if the host has only link-local IPv6 connectivity and a public IPv4 address. If no global IPv6 address is present and no global IPv4 address is present, the host will not have a 6to4 interface. If no global IPv6 address is present and a global IPv4 address is present, the host will have a 6to4 interface.
# 
# Policy Enabled State: If a global IPv4 address is present, the host will have a 6to4 interface. If no global IPv4 address is present, the host will not have a 6to4 interface.
# 
# Policy Disabled State: 6to4 is turned off and connectivity with 6to4 will not be available.
# 
# 
Set 6to4 State:
  lgpo.set:
  - name: 6to4_State
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine

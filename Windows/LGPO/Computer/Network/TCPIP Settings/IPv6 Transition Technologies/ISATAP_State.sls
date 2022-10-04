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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\ISATAP_State.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure Intra-Site Automatic Tunnel Addressing Protocol (ISATAP), an address-to-router and host-to-host, host-to-router and router-to-host automatic tunneling technology that is used to provide unicast IPv6 connectivity between IPv6 hosts across an IPv4 intranet.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# If you enable this policy setting, you can configure ISATAP with one of the following settings:
# 
# Policy Default State: If the ISATAP router name is resolved successfully, the host will have ISATAP configured with a link-local address and an address for each prefix received from the ISATAP router through stateless address auto-configuration. If the ISATAP router name is not resolved successfully, ISATAP connectivity is not available on the host using the corresponding IPv4 address.
# 
# Policy Enabled State: If the ISATAP name is resolved successfully, the host will have ISATAP configured with a link-local address and an address for each prefix received from the ISATAP router through stateless address auto-configuration. If the ISATAP name is not resolved successfully, the host will have an ISATAP interface configured with a link-local address.
# 
# Policy Disabled State: No ISATAP interfaces are present on the host.
# 
# 
Set ISATAP State:
  lgpo.set:
  - name: ISATAP_State
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine

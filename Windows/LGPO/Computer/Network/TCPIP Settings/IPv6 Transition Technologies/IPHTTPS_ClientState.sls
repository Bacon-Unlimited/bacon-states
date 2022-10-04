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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\IPHTTPS_ClientState.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure IP-HTTPS, a tunneling technology that uses the HTTPS protocol to provide IP connectivity to a remote network.
# 
# If you disable or do not configure this policy setting, the local host settings are used.
# 
# If you enable this policy setting, you can specify an IP-HTTPS server URL. You will be able to configure IP-HTTPS with one of the following settings:
# 
# Policy Default State: The IP-HTTPS interface is used when there are no other connectivity options.
# 
# Policy Enabled State: The IP-HTTPS interface is always present, even if the host has other connectivity options.
# 
# Policy Disabled State: No IP-HTTPS interfaces are present on the host.
# 
# 
Set IP-HTTPS State:
  lgpo.set:
  - name: IPHTTPS_ClientState
  - setting:
      IPHTTPSClientUrlBox: text-placeholder
      StateSelect: enum-placeholder
  - policy_class: Machine

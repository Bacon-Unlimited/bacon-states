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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\Teredo_State.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure Teredo, an address assignment and automatic tunneling technology that provides unicast IPv6 connectivity across the IPv4 Internet.
# 
# If you disable or do not configure this policy setting, the local host settings are used.
# 
# If you enable this policy setting, you can configure Teredo with one of the following settings:
# 
# Default: The default state is "Client."
# 
# Disabled: No Teredo interfaces are present on the host.
# 
# Client: The Teredo interface is present only when the host is not on a network that includes a domain controller.
# 
# Enterprise Client: The Teredo interface is always present, even if the host is on a network that includes a domain controller.
# 
# 
Set Teredo State:
  lgpo.set:
  - name: Teredo_State
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine

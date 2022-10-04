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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\6to4_Router_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify a 6to4 relay name for a 6to4 host. A 6to4 relay is used as a default gateway for IPv6 network traffic sent by the 6to4 host. The 6to4 relay name setting has no effect if 6to4 connectivity is not available on the host.
# 
# If you enable this policy setting, you can specify a relay name for a 6to4 host.
# 
# If you disable or do not configure this policy setting, the local host setting is used, and you cannot specify a relay name for a 6to4 host.
# 
# 
Set 6to4 Relay Name:
  lgpo.set:
  - name: 6to4_Router_Name
  - setting:
      RouterNameBox: text-placeholder
  - policy_class: Machine

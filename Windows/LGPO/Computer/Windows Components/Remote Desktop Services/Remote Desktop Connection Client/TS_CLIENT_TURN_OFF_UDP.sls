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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Connection Client\TS_CLIENT_TURN_OFF_UDP.sls
#
# SUPPORTED WINDOWS OS
# terminalserver:TS_SUPPORTED_Windows8_or_ARM
#
# This policy setting specifies whether the UDP protocol will be used to access servers via Remote Desktop Protocol. 
# 
# If you enable this policy setting, Remote Desktop Protocol traffic will only use the TCP protocol.
# 
# If you disable or do not configure this policy setting, Remote Desktop Protocol traffic will attempt to use both TCP and UDP protocols.
# 
Turn Off UDP On Client:
  lgpo.set:
  - name: TS_CLIENT_TURN_OFF_UDP
  - setting: Enabled
  - policy_class: Machine

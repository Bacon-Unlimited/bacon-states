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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_AUTO_RECONNECT.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies whether to allow Remote Desktop Connection clients to automatically reconnect to sessions on an RD Session Host server if their network link is temporarily lost. By default, a maximum  of twenty reconnection attempts are made at five second intervals.
# 
# If the status is set to Enabled, automatic reconnection is attempted for all clients running Remote Desktop Connection whenever their network connection is lost.
# 
# If the status is set to Disabled, automatic reconnection of clients is prohibited.
# 
# If the status is set to Not Configured, automatic reconnection is not specified at the  Group Policy level. However, users can configure automatic reconnection using the "Reconnect if connection is dropped" checkbox on the Experience tab in Remote Desktop Connection.
# 
Automatic reconnection:
  lgpo.set:
  - name: TS_AUTO_RECONNECT
  - setting: Enabled
  - policy_class: Machine

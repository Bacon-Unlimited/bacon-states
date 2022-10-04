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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection\TS_CAMERA_REDIRECTION.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy setting lets you control the redirection of video capture devices to the remote computer in a Remote Desktop Services session. 
# 
# By default, Remote Desktop Services allows redirection of video capture devices.
# 
# If you enable this policy setting, users cannot redirect their video capture devices to the remote computer. 
# 
# If you disable or do not configure this policy setting, users can redirect their video capture devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the video capture devices to redirect to the remote computer.
# 
# 
Do not allow video capture redirection:
  lgpo.set:
  - name: TS_CAMERA_REDIRECTION
  - setting: Enabled
  - policy_class: Machine

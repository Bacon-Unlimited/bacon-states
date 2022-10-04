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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Temporary folders\TS_TEMP_DELETE.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies whether Remote Desktop Services retains a user's per-session temporary folders at logoff.
# 
# You can use this setting to maintain a user's session-specific temporary folders on a remote computer, even if the user logs off from a session. By default, Remote Desktop Services deletes a user's temporary folders when the user logs off.
# 
# If you enable this policy setting, a user's per-session temporary folders are retained when the user logs off from a session.
# 
# If you disable this policy setting, temporary folders are deleted when a user logs off, even if the server administrator specifies otherwise.
# 
# If you do not configure this policy setting, Remote Desktop Services deletes the temporary folders from the remote computer at logoff, unless specified otherwise by the server administrator.
# 
# Note: This setting only takes effect if per-session temporary folders are in use on the server. If you enable the Do not use temporary folders per session policy setting, this policy setting has no effect.
# 
Do not delete temp folders upon exit:
  lgpo.set:
  - name: TS_TEMP_DELETE
  - setting: Enabled
  - policy_class: Machine

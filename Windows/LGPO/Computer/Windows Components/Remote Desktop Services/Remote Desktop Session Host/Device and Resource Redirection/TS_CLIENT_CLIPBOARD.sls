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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection\TS_CLIENT_CLIPBOARD.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether to prevent the sharing of Clipboard contents (Clipboard redirection) between a remote computer and a client computer during a Remote Desktop Services session.
# 
# You can use this setting to prevent users from redirecting Clipboard data to and from the remote computer and the local computer. By default, Remote Desktop Services allows Clipboard redirection.
# 
# If you enable this policy setting, users cannot redirect Clipboard data.
# 
# If you disable this policy setting, Remote Desktop Services always allows Clipboard redirection.
# 
# If you do not configure this policy setting, Clipboard redirection is not specified at the Group Policy level. 
# 
Do not allow Clipboard redirection:
  lgpo.set:
  - name: TS_CLIENT_CLIPBOARD
  - setting: Enabled
  - policy_class: Machine

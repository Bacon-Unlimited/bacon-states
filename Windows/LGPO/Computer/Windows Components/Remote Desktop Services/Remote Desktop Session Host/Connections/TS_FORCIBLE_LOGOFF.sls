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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_FORCIBLE_LOGOFF.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_WindowsXP_Win2K3_only
#
# This policy setting determines whether an administrator attempting to connect remotely to the console of a server can log off an administrator currently logged on to the console.
# 
# This policy is useful when the currently connected administrator does not want to be logged off by another administrator. If the connected administrator is logged off, any data not previously saved is lost.
# 
# If you enable this policy setting, logging off the connected administrator is not allowed.
# 
# If you disable or do not configure this policy setting, logging off the connected administrator is allowed.
# 
# Note: The console session is also known as Session 0. Console access can be obtained by using the /console switch from Remote Desktop Connection in the computer field name or from the command line.
Deny logoff of an administrator logged in to the console session:
  lgpo.set:
  - name: TS_FORCIBLE_LOGOFF
  - setting: Enabled
  - policy_class: Machine

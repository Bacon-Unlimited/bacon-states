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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Profiles\TS_USER_MANDATORY_PROFILES.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k3_Sp2
#
# This policy setting allows you to specify whether Remote Desktop Services uses a mandatory profile for all users connecting remotely to the RD Session Host server.
# 
# If you enable this policy setting, Remote Desktop Services uses the path specified in the "Set path for Remote Desktop Services Roaming User Profile" policy setting as the root folder for the mandatory user profile. All users connecting remotely to the RD Session Host server use the same user profile.
# 
# If you disable or do not configure this policy setting, mandatory user profiles are not used by users connecting remotely to the RD Session Host server.
# 
# Note:
# 
# For this policy setting to take effect, you must also enable and configure the "Set path for Remote Desktop Services Roaming User Profile" policy setting.
# 
Use mandatory profiles on the RD Session Host server:
  lgpo.set:
  - name: TS_USER_MANDATORY_PROFILES
  - setting: Enabled
  - policy_class: Machine

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
# LOCATION: \Computer\System\User Profiles\ProfileErrorAction.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting will automatically log off a user when Windows cannot load their profile. 
# 
# If Windows cannot access the user profile folder or the profile contains errors that prevent it from loading, Windows logs on the user with a temporary profile. This policy setting allows the administrator to disable this behavior, preventing Windows from loggin on the user with a temporary profile.
# 
# If you enable this policy setting, Windows will not log on a user with a temporary profile. Windows logs the user off if their profile cannot be loaded.
# 
# If you disable this policy setting or do not configure it, Windows logs on the user with a temporary profile when Windows cannot load their user profile.
# 
# Also, see the "Delete cached copies of roaming profiles" policy setting.
Do not log users on with temporary profiles:
  lgpo.set:
  - name: ProfileErrorAction
  - setting: Enabled
  - policy_class: Machine

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
# LOCATION: \Computer\System\User Profiles\Readonlyuserprofile.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines if the changes a user makes to their roaming profile are merged with the server copy of their profile.
# 
# By default, when a user with a roaming profile logs on to a computer, the roaming profile is copied down to the local computer. If the user has logged on to the computer in the past, the roaming profile is merged with the local profile. Similarly, when the user logs off the computer, the local copy of their profile, including any changes, is merged with the server copy of the profile.
# 
# Using this policy setting, you can prevent changes made to a roaming profile on a particular computer from being persisted.
# 
# If you enable this policy setting, changes a user makes to their roaming profile aren't merged with the server (roaming) copy when the user logs off.
# 
# If you disable or not configure this policy setting, the default behavior occurs, as indicated above.
# 
# Note: This policy setting only affects roaming profile users.
Prevent Roaming Profile changes from propagating to the server:
  lgpo.set:
  - name: Readonlyuserprofile
  - setting: Enabled
  - policy_class: Machine

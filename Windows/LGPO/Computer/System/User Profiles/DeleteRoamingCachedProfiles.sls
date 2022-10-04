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
# LOCATION: \Computer\System\User Profiles\DeleteRoamingCachedProfiles.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting determines whether Windows keeps a copy of a user's roaming profile on the local computer's hard drive when the user logs off. 
# 
# Roaming profiles reside on a network server. By default, when users with roaming profiles log off, the system also saves a copy of their roaming profile on the hard drive of the computer they are using in case the server that stores the roaming profile is unavailable when the user logs on again. The local copy is also used when the remote copy of the roaming user profile is slow to load.
# 
# If you enable this policy setting, any local copies of the user's roaming profile are deleted when the user logs off. The roaming profile still remains on the network server that stores it.
# 
# If you disable or do not configure this policy setting, Windows keeps a copy of a user's roaming profile on the local computer's hard drive when the user logs off.
# 
# Important: Do not enable this policy setting if you are using the slow link detection feature. To respond to a slow link, the system requires a local copy of the user's roaming profile.
Delete cached copies of roaming profiles:
  lgpo.set:
  - name: DeleteRoamingCachedProfiles
  - setting: Enabled
  - policy_class: Machine

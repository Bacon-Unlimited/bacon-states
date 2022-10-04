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
# LOCATION: \Computer\System\User Profiles\CleanupProfiles.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows an administrator to automatically delete user profiles on system restart that have not been used within a specified number of days. Note: One day is interpreted as 24 hours after a specific user profile was accessed.
# 
# If you enable this policy setting, the User Profile Service will automatically delete on the next system restart all user profiles on the computer that have not been used within the specified number of days. 
# 
# If you disable or do not configure this policy setting, User Profile Service will not automatically delete any profiles on the next system restart.
Delete user profiles older than a specified number of days on system restart:
  lgpo.set:
  - name: CleanupProfiles
  - setting:
      CleanupProfiles_Days: decimal-placeholder
  - policy_class: Machine

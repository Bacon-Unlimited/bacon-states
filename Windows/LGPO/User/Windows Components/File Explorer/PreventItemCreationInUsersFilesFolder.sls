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
# LOCATION: \User\Windows Components\File Explorer\PreventItemCreationInUsersFilesFolder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows administrators to prevent users from adding new items such as files or folders to the root of their Users Files folder in File Explorer.
# 
# If you enable this policy setting, users will no longer be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.
# 
# If you disable or do not configure this policy setting, users will be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.
# 
# 
# Note: Enabling this policy setting does not prevent the user from being able to add new items such as files and folders to their actual file system profile folder at %userprofile%.
Prevent users from adding files to the root of their Users Files folder.:
  lgpo.set:
  - name: PreventItemCreationInUsersFilesFolder
  - setting: Enabled
  - policy_class: User

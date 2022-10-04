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
# LOCATION: \Computer\Windows Components\OneDrive\PreventOnedriveFileSync.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting lets you prevent apps and features from working with files on OneDrive.
# If you enable this policy setting:
# 
# * Users cant access OneDrive from the OneDrive app and file picker.
# * Windows Store apps cant access OneDrive using the WinRT API.
# * OneDrive doesnt appear in the navigation pane in File Explorer.
# * OneDrive files arent kept in sync with the cloud.
# * Users cant automatically upload photos and videos from the camera roll folder.
# 
# If you disable or do not configure this policy setting, apps and features can work with OneDrive file storage.
Prevent the usage of OneDrive for file storage:
  lgpo.set:
  - name: PreventOnedriveFileSync
  - setting: Enabled
  - policy_class: Machine

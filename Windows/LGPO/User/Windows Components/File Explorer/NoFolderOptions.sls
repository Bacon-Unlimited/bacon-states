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
# LOCATION: \User\Windows Components\File Explorer\NoFolderOptions.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows you to prevent users from accessing Folder Options through the View tab on the ribbon in File Explorer.
# 
# Folder Options allows users to change the way files and folders open, what appears in the navigation pane, and other advanced view settings.
# 
# If you enable this policy setting, users will receive an error message if they tap or click the Options button or choose the Change folder and search options command, and they will not be able to open Folder Options.
# 
# If you disable or do not configure this policy setting, users can open Folder Options from the View tab on the ribbon.
Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon:
  lgpo.set:
  - name: NoFolderOptions
  - setting: Enabled
  - policy_class: User

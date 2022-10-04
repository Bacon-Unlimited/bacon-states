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
# LOCATION: \User\Windows Components\File Explorer\ConfirmFileDelete.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Allows you to have File Explorer display a confirmation dialog  whenever a file is deleted or moved to the Recycle Bin.
# 
# If you enable this setting, a confirmation dialog is displayed when a file is deleted or moved to the Recycle Bin by the user.
# 
# If you disable or do not configure this setting, the default behavior of not displaying a confirmation dialog occurs.
Display confirmation dialog when deleting files:
  lgpo.set:
  - name: ConfirmFileDelete
  - setting: Enabled
  - policy_class: User

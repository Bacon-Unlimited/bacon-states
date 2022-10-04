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
# LOCATION: \User\Desktop\NoPropertiesMyDocuments.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting hides the Properties menu command on the shortcut menu for the My Documents icon.
# 
# If you enable this policy setting, the Properties menu command will not be displayed when the user does any of the following:
# 
# Right-clicks the My Documents icon.
# Clicks the My Documents icon, and then opens the File menu.
# Clicks the My Documents icon, and then presses ALT+ENTER.
# 
# If you disable or do not configure this policy setting, the Properties menu command is displayed.
Remove Properties from the Documents icon context menu:
  lgpo.set:
  - name: NoPropertiesMyDocuments
  - setting: Enabled
  - policy_class: User

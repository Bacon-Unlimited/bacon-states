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
# LOCATION: \User\Desktop\NoPropertiesMyComputer.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kSP3
#
# This setting hides Properties on the context menu for Computer.
# 
# If you enable this setting, the Properties option will not be present when the user right-clicks My Computer or clicks Computer and then goes to the File menu.  Likewise, Alt-Enter does nothing when Computer is selected.
# 
# If you disable or do not configure this setting, the Properties option is displayed as usual.
Remove Properties from the Computer icon context menu:
  lgpo.set:
  - name: NoPropertiesMyComputer
  - setting: Enabled
  - policy_class: User

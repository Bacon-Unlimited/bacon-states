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
# LOCATION: \User\Start Menu and Taskbar\PowerButtonAction.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7Only
#
# Set the default action of the power button on the Start menu.
# 
# If you enable this setting, the Start Menu will set the power button to the chosen action, and not let the user change this action.
# 
# If you set the button to either Sleep or Hibernate, and that state is not supported on a computer, then the button will fall back to Shut Down.
# 
# If you disable or do not configure this setting, the Start Menu power button will be set to Shut Down by default, and the user can change this setting to another action.
Change Start Menu power button:
  lgpo.set:
  - name: PowerButtonAction
  - setting:
      PowerButtonActionDropdown: enum-placeholder
  - policy_class: User

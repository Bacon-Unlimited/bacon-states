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
# LOCATION: \User\Start Menu and Taskbar\ShowRunInStartMenu.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# If you enable this setting, the Run command is added to the Start menu.  If you disable or do not configure this setting, the Run command is not visible on the Start menu by default, but it can be added from the Taskbar and Start menu properties. If the Remove Run link from Start Menu policy is set, the Add the Run command to the Start menu policy has no effect.
Add the Run command to the Start Menu:
  lgpo.set:
  - name: ShowRunInStartMenu
  - setting: Enabled
  - policy_class: User

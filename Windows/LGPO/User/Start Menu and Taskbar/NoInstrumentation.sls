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
# LOCATION: \User\Start Menu and Taskbar\NoInstrumentation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaTo2k
#
# This policy setting allows you to turn off user tracking.
# 
# If you enable this policy setting, the system does not track the programs that the user runs, and does not display frequently used programs in the Start Menu.
# 
# If you disable or do not configure this policy setting, the system tracks the programs that the user runs. The system uses this information to customize Windows features, such as showing frequently used programs in the Start Menu.
# 
# Also, see these related policy settings: "Remove frequent programs liist from the Start Menu" and "Turn off personalized menus".
# 
# This policy  setting does not prevent users from pinning programs to the Start Menu or Taskbar. See the "Remove pinned programs list from the Start Menu" and "Do not allow pinning programs to the Taskbar" policy settings.
Turn off user tracking:
  lgpo.set:
  - name: NoInstrumentation
  - setting: Enabled
  - policy_class: User

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
# LOCATION: \Computer\System\Logon\HideFastUserSwitching.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to hide the Switch User interface in the Logon UI, the Start menu and the Task Manager.
# 
# If you enable this policy setting, the Switch User interface is hidden from the user who is attempting to log on or is logged on to the computer that has this policy applied. 
# 
# The locations that Switch User interface appear are in the Logon UI, the Start menu and the Task Manager.
# 
# If you disable or do not configure this policy setting, the Switch User interface is accessible to the user in the three locations.
Hide entry points for Fast User Switching:
  lgpo.set:
  - name: HideFastUserSwitching
  - setting: Enabled
  - policy_class: Machine

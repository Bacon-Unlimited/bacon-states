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
# LOCATION: \Computer\Start Menu and Taskbar\HidePowerOptions.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting prevents users from performing the following commands from the Windows security screen, the logon screen, and the Start menu: Shut Down, Restart, Sleep, and Hibernate. This policy setting does not prevent users from running Windows-based programs that perform these functions.
# 
# If you enable this policy setting, the shutdown, restart, sleep, and hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE, and from the logon screen.
# 
# If you disable or do not configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security and logon screens is also available.
Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands:
  lgpo.set:
  - name: HidePowerOptions
  - setting: Enabled
  - policy_class: Machine

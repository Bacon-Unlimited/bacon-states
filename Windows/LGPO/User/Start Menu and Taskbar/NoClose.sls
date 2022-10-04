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
# LOCATION: \User\Start Menu and Taskbar\NoClose.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from performing the following commands from the Start menu or Windows Security screen: Shut Down, Restart, Sleep, and Hibernate. This policy setting does not prevent users from running Windows-based programs that perform these functions.
# 
# If you enable this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE.
# 
# If you disable or do not configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security screen is also available.
# 
# Note: Third-party programs certified as compatible with Microsoft Windows Vista, Windows XP SP2, Windows XP SP1, Windows XP, or Windows 2000 Professional are required to support this policy setting.
Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands:
  lgpo.set:
  - name: NoClose
  - setting: Enabled
  - policy_class: User

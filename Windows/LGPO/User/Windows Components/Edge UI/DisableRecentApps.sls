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
# LOCATION: \User\Windows Components\Edge UI\DisableRecentApps.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# This policy setting allows you to prevent the last app and the list of recent apps from appearing when the mouse is pointing to the upper-left corner of the screen.
# 
# If you enable this policy setting, the user will no longer be able to switch to recent apps using the mouse.  The user will still be able to switch apps using touch gestures, keyboard shortcuts, and the Start screen.
# 
# If you disable or don't configure this policy setting, the recent apps will be available by default, and the user can configure this setting.
Do not show recent apps when the mouse is pointing to the upper-left corner of the screen:
  lgpo.set:
  - name: DisableRecentApps
  - setting: Enabled
  - policy_class: User

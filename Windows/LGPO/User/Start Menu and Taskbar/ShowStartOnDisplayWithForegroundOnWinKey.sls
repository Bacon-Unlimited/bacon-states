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
# LOCATION: \User\Start Menu and Taskbar\ShowStartOnDisplayWithForegroundOnWinKey.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows the Start screen to appear on the display the user is using when they press the Windows logo key. This setting only applies to users who are using multiple displays.
# 
# If you enable this policy setting, the Start screen will appear on the display the user is using when they press the Windows logo key.
# 
# If you disable or don't configure this policy setting, the Start screen will always appear on the main display when the user presses the Windows logo key. Users will still be able to open Start on other displays by pressing the Start button on that display. Also, the user will be able to configure this setting.
Show Start on the display the user is using when they press the Windows logo key:
  lgpo.set:
  - name: ShowStartOnDisplayWithForegroundOnWinKey
  - setting: Enabled
  - policy_class: User

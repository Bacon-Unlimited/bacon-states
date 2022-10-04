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
# LOCATION: \User\Start Menu and Taskbar\ShowAppsViewOnStart.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows the Apps view to be opened by default when the user goes to Start.
# 
# If you enable this policy setting, the Apps view will appear whenever the user goes to Start.  Users will still be able to switch between the Apps view and the Start screen.
# 
# If you disable or dont configure this policy setting, the Start screen will appear by default whenever the user goes to Start, and the user will be able to switch between the Apps view and the Start screen. Also, the user will be able to configure this setting.
Show the Apps view automatically when the user goes to Start:
  lgpo.set:
  - name: ShowAppsViewOnStart
  - setting: Enabled
  - policy_class: User

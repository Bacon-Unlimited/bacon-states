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
# LOCATION: \User\Start Menu and Taskbar\ClearTilesOnExit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# If you enable this setting, the system deletes tile notifications when the user logs on. As a result, the Tiles in the start view will always show their default content when the user logs on. In addition, any cached versions of these notifications will be cleared when the user logs on.
# 
# If you disable or do not configure this setting, the system retains notifications, and when a user logs on, the tiles appear just as they did when the user logged off, including the history of previous notifications for each tile.
# 
# This setting does not prevent new notifications from appearing. See the "Turn off Application Notifications" setting to prevent new notifications.
Clear tile notifications during log on:
  lgpo.set:
  - name: ClearTilesOnExit
  - setting: Enabled
  - policy_class: User

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
# LOCATION: \User\Start Menu and Taskbar\NoToolbarsOnTaskbar.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting affects the taskbar.
# 
# The taskbar includes the Start button, buttons for currently running tasks, custom toolbars, the notification area, and the system clock. Toolbars include Quick Launch, Address, Links, Desktop, and other custom toolbars created by the user or by an application.
# 
# If this setting is enabled, the taskbar does not display any custom toolbars, and the user cannot add any custom toolbars to the taskbar. Moreover, the "Toolbars" menu command and submenu are removed from the context menu. The taskbar displays only the Start button, taskbar buttons, the notification area, and the system clock.
# 
# If this setting is disabled or is not configured, the taskbar displays all toolbars. Users can add or remove custom toolbars, and the "Toolbars" command appears in the context menu.
Do not display any custom toolbars in the taskbar:
  lgpo.set:
  - name: NoToolbarsOnTaskbar
  - setting: Enabled
  - policy_class: User

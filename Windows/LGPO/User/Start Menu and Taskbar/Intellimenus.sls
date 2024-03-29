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
# LOCATION: \User\Start Menu and Taskbar\Intellimenus.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaTo2k
#
# Disables personalized menus.
# 
# Windows personalizes long menus by moving recently used items to the top of the menu and hiding items that have not been used recently. Users can display the hidden items by clicking an arrow to extend the menu.
# 
# If you enable this setting, the system does not personalize menus. All menu items appear and remain in standard order. Also, this setting removes the "Use Personalized Menus" option so users do not try to change the setting while a setting is in effect.
# 
# Note: Personalized menus require user tracking. If you enable the "Turn off user tracking" setting, the system disables user tracking and personalized menus and ignores this setting.
# 
# Tip: To Turn off personalized menus without specifying a setting, click Start, click Settings, click Taskbar and Start Menu, and then, on the General tab, clear the "Use Personalized Menus" option.
Turn off personalized menus:
  lgpo.set:
  - name: Intellimenus
  - setting: Enabled
  - policy_class: User

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
# LOCATION: \User\Start Menu and Taskbar\NoStartPage.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaToXP
#
# This setting affects the presentation of the Start menu.
# 
# The classic Start menu in Windows 2000 Professional allows users to begin common tasks, while the new Start menu consolidates common items onto one menu. When the classic Start menu is used, the following icons are placed on the desktop: Documents, Pictures, Music, Computer, and Network. The new Start menu starts them directly.
# 
# If you enable this setting, the Start menu displays the classic Start menu in the Windows 2000 style and displays the standard desktop icons.
# 
# If you disable this setting, the Start menu only displays in the new style, meaning the desktop icons are now on the Start page.
# 
# If you do not configure this setting, the default is the new style, and the user can change the view.
Force classic Start Menu:
  lgpo.set:
  - name: NoStartPage
  - setting: Enabled
  - policy_class: User

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
# LOCATION: \User\Windows Components\File Explorer\NoShellSearchButton.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to remove the Search button from the File Explorer toolbar.
# 
# If you enable this policy setting, the Search button is removed from the Standard Buttons toolbar that appears in File Explorer and other programs that use the File Explorer window, such as My Computer and Network Locations.
# 
# Enabling this policy setting does not remove the Search button or affect any search features of Internet browser windows, such as the Internet Explorer window.
# 
# If you disable or do not configure this policy setting, the Search button is available from the File Explorer toolbar.
# 
# This policy setting does not affect the Search items on the File Explorer context menu or on the Start menu. To remove Search from the Start menu, use the "Remove Search menu from Start menu" policy setting (in User Configuration\Administrative Templates\Start Menu and Taskbar). To hide all context menus, use the "Remove File Explorer's default context menu" policy setting.
Remove Search button from File Explorer:
  lgpo.set:
  - name: NoShellSearchButton
  - setting: Enabled
  - policy_class: User

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
# LOCATION: \User\Start Menu and Taskbar\NoFind.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOrServerOnly
#
# This policy setting allows you to remove the Search link from the Start menu, and disables some File Explorer search elements.  Note that this does not remove the search box from the new style Start menu.
# 
# If you enable this policy setting, the Search item is removed from the Start menu and from the context menu that appears when you right-click the Start menu. Also, the system does not respond when users press the Application key (the key with the Windows logo)+ F.
# 
# Note: Enabling this policy setting also prevents the user from using the F3 key.
# 
# In File Explorer, the Search item still appears on the Standard buttons toolbar, but the system does not respond when the user presses Ctrl+F. Also, Search does not appear in the context menu when you right-click an icon representing a drive or a folder.
# 
# This policy setting affects the specified user interface elements only. It does not affect Internet Explorer and does not prevent the user from using other methods to search.
# 
# If you disable or do not configure this policy setting, the Search link is available from the Start menu.
Remove Search link from Start Menu:
  lgpo.set:
  - name: NoFind
  - setting: Enabled
  - policy_class: User

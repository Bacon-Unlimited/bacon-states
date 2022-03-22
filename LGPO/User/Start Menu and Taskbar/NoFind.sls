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

# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from removing Web content from their Active Desktop.
# 
# In Active Desktop, you can add items to the desktop but close them so they are not displayed.
# 
# If you enable this setting, items added to the desktop cannot be closed; they always appear on the desktop. This setting removes the check boxes from items on the Web tab in Display in Control Panel.
# 
# Note: This setting does not prevent users from deleting items from their Active Desktop.
Prohibit closing items:
  lgpo.set:
  - name: sz_ATC_DisableClose
  - setting: Enabled
  - policy_class: User

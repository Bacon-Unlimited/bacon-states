# windows:SUPPORTED_WindowsPreVista
#
# Adds and deletes specified Web content items.
# 
# You can use the "Add" box in this setting to add particular Web-based items or shortcuts to users' desktops. Users can close or delete the items (if settings allow), but the items are added again each time the setting is refreshed.
# 
# You can also use this setting to delete particular Web-based items from users' desktops. Users can add the item again (if settings allow), but the item is deleted each time the setting is refreshed.
# 
# Note: Removing an item from the "Add" list for this setting is not the same as deleting it. Items that are removed from the "Add" list are not removed from the desktop. They are simply not added again.
# 
# Note: For this setting to take affect, you must log off and log on to the system.
Add/Delete items:
  lgpo.set:
  - name: sz_AdminComponents_Title
  - setting:
      sz_ATC_AdminAddItem: text-placeholder
      sz_ATC_AdminDeleteItem: text-placeholder
  - policy_class: User

# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from deleting Web content from their Active Desktop.
# 
# This setting removes the Delete button from the Web tab in Display in Control Panel. As a result, users can temporarily remove, but not delete, Web content from their Active Desktop.
# 
# This setting does not prevent users from adding Web content to their Active Desktop.
# 
# Also, see the "Prohibit closing items" and "Disable all items" settings.
Prohibit deleting items:
  lgpo.set:
  - name: sz_ATC_DisableDel
  - setting: Enabled
  - policy_class: User

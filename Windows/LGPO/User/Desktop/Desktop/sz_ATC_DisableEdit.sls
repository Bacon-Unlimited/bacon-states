# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from changing the properties of Web content items on their Active Desktop.
# 
# This setting disables the Properties button on the Web tab in Display in Control Panel. Also, it removes the Properties item from the menu for each item on the Active Desktop. As a result, users cannot change the properties of an item, such as its synchronization schedule, password, or display characteristics.
Prohibit editing items:
  lgpo.set:
  - name: sz_ATC_DisableEdit
  - setting: Enabled
  - policy_class: User

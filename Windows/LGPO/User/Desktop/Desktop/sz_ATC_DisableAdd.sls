# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from adding Web content to their Active Desktop.
# 
# This setting removes the "New" button from Web tab in Display in Control Panel. As a result, users cannot add Web pages or pictures from the Internet or an intranet to the desktop. This setting does not remove existing Web content from their Active Desktop, or prevent users from removing existing Web content.
# 
# Also, see the "Disable all items" setting.
Prohibit adding items:
  lgpo.set:
  - name: sz_ATC_DisableAdd
  - setting: Enabled
  - policy_class: User

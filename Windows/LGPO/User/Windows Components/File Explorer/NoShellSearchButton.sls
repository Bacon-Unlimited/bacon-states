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

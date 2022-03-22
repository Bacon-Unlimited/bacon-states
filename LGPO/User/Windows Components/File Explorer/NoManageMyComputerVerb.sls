# windows:SUPPORTED_Win2k
#
# Removes the Manage item from the File Explorer context menu. This context menu appears when you right-click File Explorer or My Computer.
# 
# The Manage item opens Computer Management (Compmgmt.msc), a console tool that includes many of the primary Windows 2000 administrative tools, such as Event Viewer, Device Manager, and Disk Management. You must be an administrator to use many of the features of these tools.
# 
# This setting does not remove the Computer Management item from the Start menu (Start, Programs, Administrative Tools, Computer Management), nor does it prevent users from using other methods to start Computer Management.
# 
# Tip: To hide all context menus, use the "Remove File Explorer's default context menu" setting.
Hides the Manage item on the File Explorer context menu:
  lgpo.set:
  - name: NoManageMyComputerVerb
  - setting: Enabled
  - policy_class: User

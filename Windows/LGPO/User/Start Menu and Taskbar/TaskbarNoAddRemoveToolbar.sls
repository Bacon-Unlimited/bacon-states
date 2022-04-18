# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent users from adding or removing toolbars.
# 
# If you enable this policy setting, the user is not allowed to add or remove any toolbars to the taskbar. Applications are not able to add toolbars either.
# 
# If you disable or do not configure this policy setting, the users and applications are able to add toolbars to the taskbar.
Prevent users from adding or removing toolbars:
  lgpo.set:
  - name: TaskbarNoAddRemoveToolbar
  - setting: Enabled
  - policy_class: User

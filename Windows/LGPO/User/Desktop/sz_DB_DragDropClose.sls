# windows:SUPPORTED_Win2k
#
# Prevents users from manipulating desktop toolbars.
# 
# If you enable this setting, users cannot add or remove toolbars from the desktop. Also, users cannot drag toolbars on to or off of docked toolbars.
# 
# Note: If users have added or removed toolbars, this setting prevents them from restoring the default configuration.
# 
# Tip: To view the toolbars that can be added to the desktop, right-click a docked toolbar (such as the taskbar beside the Start button), and point to "Toolbars."
# 
# Also, see the "Prohibit adjusting desktop toolbars" setting.
Prevent adding, dragging, dropping and closing the Taskbar's toolbars:
  lgpo.set:
  - name: sz_DB_DragDropClose
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from adding or removing tasks by moving or copying programs in the Scheduled Tasks folder.
# 
# This setting disables the Cut, Copy, Paste, and Paste Shortcut items on the context menu and the Edit menu in Scheduled Tasks. It also disables the drag-and-drop features of the Scheduled Tasks folder.
# 
# As a result, users cannot add new scheduled tasks by dragging, moving, or copying a document or program into the Scheduled tasks folder.
# 
# This setting does not prevent users from using other methods to create new tasks, and it does not prevent users from deleting tasks.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Prohibit Drag-and-Drop:
  lgpo.set:
  - name: DragAndDrop_2
  - setting: Enabled
  - policy_class: Machine

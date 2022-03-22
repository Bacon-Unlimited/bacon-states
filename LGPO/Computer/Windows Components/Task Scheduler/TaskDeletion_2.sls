# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from deleting tasks from the Scheduled Tasks folder.
# 
# This setting removes the Delete command from the Edit menu in the Scheduled Tasks folder and from the menu that appears when you right-click a task. Also, the system does not respond when users try to cut or drag a task from the Scheduled Tasks folder.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Important: This setting does not prevent administrators of a computer from using At.exe to delete tasks.
Prohibit Task Deletion:
  lgpo.set:
  - name: TaskDeletion_2
  - setting: Enabled
  - policy_class: Machine

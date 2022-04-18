# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from creating new tasks.
# 
# This setting removes the Add Scheduled Task item that starts the New Task Wizard. Also, the system does not respond when users try to move, paste, or drag programs or documents into the Scheduled Tasks folder.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Important: This setting does not prevent administrators of a computer from using At.exe to create new tasks or prevent administrators from submitting tasks from remote computers.
Prohibit New Task Creation:
  lgpo.set:
  - name: TaskCreation_2
  - setting: Enabled
  - policy_class: Machine

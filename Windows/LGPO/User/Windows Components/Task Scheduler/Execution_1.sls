# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from starting and stopping tasks manually.
# 
# This setting removes the Run and End Task items from the context menu that appears when you right-click a task. As a result, users cannot start tasks manually or force tasks to end before they are finished.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Prevent Task Run or End:
  lgpo.set:
  - name: Execution_1
  - setting: Enabled
  - policy_class: User

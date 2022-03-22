# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from viewing and changing the properties of an existing task.
# 
# This setting removes the Properties item from the File menu in Scheduled Tasks and from the context menu that appears when you right-click a task. As a result, users cannot change any properties of a task. They can only see the properties that appear in Detail view and in the task preview.
# 
# This setting prevents users from viewing and changing characteristics such as the program the task runs, its schedule details, idle time and power management settings, and its security context.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: This setting affects existing tasks only. To prevent users from changing the properties of newly created tasks, use the "Remove Advanced Menu" setting.
Hide Property Pages:
  lgpo.set:
  - name: PropertyPages_2
  - setting: Enabled
  - policy_class: Machine

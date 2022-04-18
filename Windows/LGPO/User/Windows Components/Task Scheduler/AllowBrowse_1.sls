# windows:SUPPORTED_WindowsPreVista
#
# Limits newly scheduled to items on the user's Start menu, and prevents the user from changing the scheduled program for existing tasks.
# 
# This setting removes the Browse button from the Schedule Task Wizard and from the Task tab of the properties dialog box for a task. Also, users cannot edit the "Run" box or the "Start in" box that determine the program and path for a task.
# 
# As a result, when users create a task, they must select a program from the list in the Scheduled Task Wizard, which displays only the tasks that appear on the Start menu and its submenus. Once a task is created, users cannot change the program a task runs.
# 
# Important: This setting does not prevent users from creating a new task by pasting or dragging any program into the Scheduled Tasks folder. To prevent this action, use the "Prohibit Drag-and-Drop" setting.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Prohibit Browse:
  lgpo.set:
  - name: AllowBrowse_1
  - setting: Enabled
  - policy_class: User

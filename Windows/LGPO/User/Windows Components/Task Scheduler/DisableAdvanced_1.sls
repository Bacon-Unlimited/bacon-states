# windows:SUPPORTED_WindowsPreVista
#
# This setting removes the "Open advanced properties for this task when I click Finish" checkbox from the last page of the Scheduled Task Wizard.  This policy is only designed to simplify task creation for beginning users.
# 
# The checkbox, when checked, instructs Task Scheduler to automatically open the newly created task's property sheet upon completion of the "Add Scheduled Task" wizard.  The task's property sheet allows users to change task characteristics such as: the program the task runs, details of its schedule, idle time and power management settings, and its security context.  Beginning users will often not be interested or confused by having the property sheet displayed automatically.  Note that the checkbox is not checked by default even if this setting is Disabled or Not Configured.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Hide Advanced Properties Checkbox in Add Scheduled Task Wizard:
  lgpo.set:
  - name: DisableAdvanced_1
  - setting: Enabled
  - policy_class: User

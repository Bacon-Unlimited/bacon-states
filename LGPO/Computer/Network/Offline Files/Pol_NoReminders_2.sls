# windows:SUPPORTED_WindowsPreVista
#
# Hides or displays reminder balloons, and prevents users from changing the setting.
# 
# Reminder balloons appear above the Offline Files icon in the notification area to notify users when they have lost the connection to a networked file and are working on a local copy of the file. Users can then decide how to proceed.
# 
# If you enable this setting, the system hides the reminder balloons, and prevents users from displaying them.
# 
# If you disable the setting, the system displays the reminder balloons and prevents users from hiding them.
# 
# If this setting is not configured, reminder balloons are displayed by default when you enable offline files, but users can change the setting.
# 
# To prevent users from changing the setting while a setting is in effect, the system disables the "Enable reminders" option on the Offline Files tab
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To display or hide reminder balloons without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Enable reminders" check box.
Turn off reminder balloons:
  lgpo.set:
  - name: Pol_NoReminders_2
  - setting: Enabled
  - policy_class: Machine

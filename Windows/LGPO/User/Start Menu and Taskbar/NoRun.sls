# windows:SUPPORTED_Windows_6_3To2k
#
# Allows you to remove the Run command from the Start menu, Internet Explorer, and Task Manager.
# 
# If you enable this setting, the following changes occur:
# 
# (1) The Run command is removed from the Start menu.
# 
# (2) The New Task (Run) command is removed from Task Manager.
# 
# (3) The user will be blocked from entering the following into the Internet Explorer Address Bar:
# 
# --- A UNC path: \\<server>\<share> 
# 
# ---Accessing local drives:  e.g., C:
# 
# --- Accessing local folders: e.g., \temp>
# 
# Also, users with extended keyboards will no longer be able to display the Run dialog box by pressing the Application key (the key with the Windows logo) + R.
# 
# If you disable or do not configure this setting, users will be able to access the Run command in the Start menu and in Task Manager and use the Internet Explorer Address Bar.
# 
# 
# 
# Note:This setting affects the specified interface only. It does not prevent users from using other methods to run programs.
# 
# Note: It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
Remove Run menu from Start Menu:
  lgpo.set:
  - name: NoRun
  - setting: Enabled
  - policy_class: User

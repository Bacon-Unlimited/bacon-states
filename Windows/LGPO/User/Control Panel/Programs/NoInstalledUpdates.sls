# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from accessing "Installed Updates" page from the "View installed updates" task.
# 
# "Installed Updates" allows users to view and uninstall updates currently installed on the computer.  The updates are often downloaded directly from Windows Update or from various program publishers.
# 
# If this setting is disabled or not configured, the "View installed updates" task and the "Installed Updates" page will be available to all users.
# 
# This setting does not prevent users from using other tools and methods to install or uninstall programs.
Hide "Installed Updates" page:
  lgpo.set:
  - name: NoInstalledUpdates
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNET
#
# This policy setting specifies whether the tasks "Publish this file to the Web," "Publish this folder to the Web," and "Publish the selected items to the Web" are available from File and Folder Tasks in Windows folders.
# 
# The Web Publishing Wizard is used to download a list of providers and allow users to publish content to the web.
# 
# If you enable this policy setting, these tasks are removed from the File and Folder tasks in Windows folders.
# 
# If you disable or do not configure this policy setting, the tasks are shown.
Turn off the "Publish to Web" task for files and folders:
  lgpo.set:
  - name: ShellRemovePublishToWeb_1
  - setting: Enabled
  - policy_class: User

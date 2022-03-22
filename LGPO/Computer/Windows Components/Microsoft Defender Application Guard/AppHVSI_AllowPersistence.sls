# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide whether data should persist across different sessions in Microsoft Defender Application Guard.
# 
# If you enable this setting, Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.
# 
# Note:
# If you enable this setting, you can still delete a user's data from a specific device using the Reset-ApplicationGuard PowerShell command. Running this command deletes all employee data, regardless of configuration, and can result in data loss for the employee.
# 
# If you disable or don't configure this setting, Application Guard deletes all user data within the Application Guard container.
#         
Allow data persistence for Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_AllowPersistence
  - setting: Enabled
  - policy_class: Machine

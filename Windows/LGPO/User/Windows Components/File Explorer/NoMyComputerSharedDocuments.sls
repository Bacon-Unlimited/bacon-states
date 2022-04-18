# windows:SUPPORTED_WindowsXPOnly
#
# This policy setting allows you to remove the Shared Documents folder from My Computer.
# 
# When a Windows client is in a workgroup, a Shared Documents icon appears in the File Explorer Web view under "Other Places" and also under "Files Stored on This Computer" in My Computer. Using this policy setting, you can choose not to have these items displayed.
# 
# If you enable this policy setting, the Shared Documents folder is not displayed in the Web view or in My Computer.
# 
# If you disable or do not configure this policy setting, the Shared Documents folder is displayed in Web view and also in My Computer when the client is part of a workgroup.
# 
# Note:  The ability to remove the Shared Documents folder via Group Policy is only available on Windows XP Professional.
Remove Shared Documents from My Computer:
  lgpo.set:
  - name: NoMyComputerSharedDocuments
  - setting: Enabled
  - policy_class: User

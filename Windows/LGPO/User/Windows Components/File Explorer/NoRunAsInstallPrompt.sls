# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from submitting alternate logon credentials to install a program.
# 
# This setting suppresses the "Install Program As Other User" dialog box for local and network installations. This dialog box, which prompts the current user for the user name and password of an administrator, appears when users who are not administrators try to install programs locally on their computers. This setting allows administrators who have logged on as regular users to install programs without logging off and logging on again using their administrator credentials.
# 
# Many programs can be installed only by an administrator. If you enable this setting and a user does not have sufficient permissions to install a program, the installation continues with the current user's logon credentials. As a result, the installation might fail, or it might complete but not include all features. Or, it might appear to complete successfully, but the installed program might not operate correctly.
# 
# If you disable this setting or do not configure it, the "Install Program As Other User" dialog box appears whenever users install programs locally on the computer.
# 
# By default, users are not prompted for alternate logon credentials when installing programs from a network share. If enabled, this setting overrides the "Request credentials for network installations" setting.
Do not request alternate credentials:
  lgpo.set:
  - name: NoRunAsInstallPrompt
  - setting: Enabled
  - policy_class: User

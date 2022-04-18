# windows:SUPPORTED_Windows7ToXP
#
# This policy setting specifies whether to use the Microsoft Web service for finding an application to open a file with an unhandled file association.
# 
# When a user opens a file that has an extension that is not associated with any applications on the computer, the user is given the choice to select a local application or use the Web service to find an application.
# 
# If you enable this policy setting, the link and the dialog for using the Web service to open an unhandled file association are removed.
# 
# If you disable or do not configure this policy setting, the user is allowed to use the Web service.
Turn off Internet File Association service:
  lgpo.set:
  - name: ShellNoUseInternetOpenWith_2
  - setting: Enabled
  - policy_class: Machine

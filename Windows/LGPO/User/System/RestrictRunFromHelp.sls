# windows:SUPPORTED_WindowsXP
#
# 
#         This policy setting allows you to restrict programs from being run from online Help.
#         
#         If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names names of the programs you want to restrict, separated by commas.
#         
#         If you disable or do not configure this policy setting, users can run all applications from online Help.
#         
#         Note: You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.
#         
#         Note: This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations cannot launched from Help
#       
Restrict these programs from being launched from Help:
  lgpo.set:
  - name: RestrictRunFromHelp
  - setting:
      RestrictRunFromHelp_Edit: text-placeholder
  - policy_class: User

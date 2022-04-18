# windows:SUPPORTED_Windows8
#
# 
#         Allows or denies development of Windows Store applications and installing them directly from an IDE.
# 
#         If you enable this setting and enable the "Allow all trusted apps to install" Group Policy, you can develop Windows Store apps and install them directly from an IDE.
# 
#         If you disable or do not configure this setting, you cannot develop Windows Store apps or install them directly from an IDE.
#       
Allows development of Windows Store apps and installing them from an integrated development environment (IDE):
  lgpo.set:
  - name: AllowDevelopmentWithoutDevLicense
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate location for Windows Service Pack installation files.
# 
# If you enable this policy setting, enter the fully qualified path to the new location in the "Windows Service Pack Setup file path" box.
# 
# If you disable or do not configure this policy setting, the Windows Service Pack Setup source path will be the location used during the last time Windows Service Pack Setup was run on the system.
# 
# 
Specify Windows Service Pack installation file location:
  lgpo.set:
  - name: ServicePackSourcePath
  - setting:
      ServicePackSourcePathBox: text-placeholder
  - policy_class: Machine

# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate location for Windows installation files.
# 
# If you enable this policy setting, enter the fully qualified path to the new location in the "Windows Setup file path" box. 
# 
# If you disable or do not configure this policy setting, the Windows Setup source path will be the location used during the last time Windows Setup was run on the system.
# 
# 
Specify Windows installation file location:
  lgpo.set:
  - name: SetupSourcePath
  - setting:
      SetupSourcePathBox: text-placeholder
  - policy_class: Machine

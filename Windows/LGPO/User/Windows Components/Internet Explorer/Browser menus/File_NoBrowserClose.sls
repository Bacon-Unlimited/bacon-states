# SUPPORTED_IE5
#
# Prevents users from closing Microsoft Internet Explorer and File Explorer.
# 
# If you enable this policy, the Close command on the File menu will appear dimmed.
# 
# If you disable this policy or do not configure it, users are not prevented from closing the browser or File Explorer.
# 
# Note: The Close button in the top right corner of the program will not work; if users click the Close button, they will be informed that the command is not available.
'File menu: Disable closing the browser and Explorer windows':
  lgpo.set:
  - name: File_NoBrowserClose
  - setting: Enabled
  - policy_class: User

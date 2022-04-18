# windows:SUPPORTED_Windows7
#
# This policy setting allows you to prevent data loss when you change the target location for Folder Redirection, and the new and old targets point to the same network share, but have different network paths.
# 
# If you enable this policy setting, Folder Redirection creates a temporary file in the old location in order to verify that new and old locations point to the same network share. If both new and old locations point to the same share, the target path is updated and files are not copied or deleted.  The temporary file is deleted.
# 
# If you disable or do not configure this policy setting, Folder Redirection does not create a temporary file and functions as if both new and old locations point to different shares when their network paths are different.
# 
# Note: If the paths point to different network shares, this policy setting is not required.  If the paths point to the same network share, any data contained in the redirected folders is deleted if this policy setting is not enabled.
Verify old and new Folder Redirection targets point to the same share before redirecting:
  lgpo.set:
  - name: CheckSameSourceAndTargetForFRAndDFS
  - setting: Enabled
  - policy_class: Machine

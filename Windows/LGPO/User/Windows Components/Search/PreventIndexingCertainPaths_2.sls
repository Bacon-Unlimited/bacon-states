# 4OrLater
#
# If you enable this policy setting, you specify a list of paths to exclude from indexing. The user cannot enter any path that starts with one of the paths you specified. On a per-user basis, this policy setting will work only if a protocol handler referencing a SID-based user scope, such as MAPI, is specified. File system paths that do not reference a specific SID will not be excluded from indexing if these are only specified in the Group Policy under "User Configuration." To restrict a file system path from indexing, please specify the file system path to be indexed under the "Computer Configuration" Group Policy.
# 
# If you enable and then disable this policy setting, users can index any path not restricted by other policies, but their original list of paths to index is not restored.
#       
Prevent indexing certain paths:
  lgpo.set:
  - name: PreventIndexingCertainPaths_2
  - setting:
      PreventIndexingCertainPaths:
      - placeholder1
      - placeholder2
  - policy_class: User

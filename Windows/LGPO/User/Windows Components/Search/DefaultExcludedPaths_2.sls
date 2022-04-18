# 4OrLater
#
# Enabling this policy allows you to specify a list of paths to exclude from indexing by default. The user may override these paths and include them in indexing. On a per-user basis, this policy setting will work only if a protocol handler referencing a SID-based user scope, such as MAPI, is specified. File system paths that do not reference a specific SID will not be excluded from indexing if these are only specified in the Group Policy under "User Configuration." To restrict a file system path from indexing, please specify the file system path to be indexed under the "Computer Configuration" Group Policy.
Default excluded paths:
  lgpo.set:
  - name: DefaultExcludedPaths_2
  - setting:
      DefaultExcludedPaths:
      - placeholder1
      - placeholder2
  - policy_class: User

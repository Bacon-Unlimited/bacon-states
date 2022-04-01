# 4OrLater
#
# Enabling this policy allows you to specify a list of paths to index by default. The user may override these paths and exclude them from indexing. On a per-user basis, this policy setting will work only if a protocol handler referencing a SID-based user scope, such as MAPI, is specified. File system paths that do not reference a specific SID will not be included for indexing if these are only specified in the Group Policy under "User Configuration." To include a file system path for indexing, please specify the file system path to be indexed under the "Computer Configuration" Group Policy.
Default indexed paths:
  lgpo.set:
  - name: DefaultIndexedPaths_2
  - setting:
      DefaultIndexedPaths:
      - placeholder1
      - placeholder2
  - policy_class: User

# windows:SUPPORTED_Windows_10_0
#
# Enabling Win32 long paths will allow manifested win32 applications and Windows Store applications to access paths beyond the normal 260 character limit per node on file systems that support it.  Enabling this setting will cause the long paths to be accessible within the process.
Enable Win32 long paths:
  lgpo.set:
  - name: LongPathsEnabled
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify a list of known folders that should be disabled.  Disabling a known folder will prevent the underlying file or directory from being created via the known folder API.  If the folder exists before the policy is applied, the folder must be manually deleted since the policy only blocks the creation of the folder.
# 
# You can specify a known folder using its known folder id or using its canonical name.  For example, the Sample Videos known folder can be disabled by specifying {440fcffd-a92b-4739-ae1a-d4a54907c53f} or SampleVideos.
# 
# Note: Disabling a known folder can introduce application compatibility issues in applications that depend on the existence of the known folder.
Disable Known Folders:
  lgpo.set:
  - name: DisableKnownFolders
  - setting:
      DisableKnownFolders_Prompt:
      - placeholder1
      - placeholder2
  - policy_class: User

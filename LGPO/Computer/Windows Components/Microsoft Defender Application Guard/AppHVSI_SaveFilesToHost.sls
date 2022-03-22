# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting determines whether to save downloaded files to the host operating system from the Microsoft Defender Application Guard container.
# 
# If you enable this setting, people can save downloaded files from the Microsoft Defender Application Guard container to the host operating system.
# 
# If you disable or don't configure this setting, people can't save downloaded files from the Microsoft Defender Application Guard container to the host operating system.
#         
Allow files to download and save to the host operating system from Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_SaveFilesToHost
  - setting: Enabled
  - policy_class: Machine

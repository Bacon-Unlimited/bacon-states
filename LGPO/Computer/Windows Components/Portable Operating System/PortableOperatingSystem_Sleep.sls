# windows:SUPPORTED_Windows8
#
# 
# 
# Specifies whether the PC can use standby sleep states (S1-S3) when starting from a Windows To Go workspace.
# 
# If you enable this setting, Windows, when started from a Windows To Go workspace, can't use standby states to make the PC sleep.
# 
# If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can use standby states to make the PC sleep.
Disallow standby sleep states (S1-S3) when starting from a Windows to Go workspace:
  lgpo.set:
  - name: PortableOperatingSystem_Sleep
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_Windows8
#
# 
# 
# Specifies whether the PC can use the hibernation sleep state (S4) when started from a Windows To Go workspace.
# 
# If you enable this setting, Windows, when started from a Windows To Go workspace, can hibernate the PC.
# 
# If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can't hibernate the PC.
Allow hibernate (S4) when starting from a Windows To Go workspace:
  lgpo.set:
  - name: PortableOperatingSystem_Hibernate
  - setting: Enabled
  - policy_class: Machine

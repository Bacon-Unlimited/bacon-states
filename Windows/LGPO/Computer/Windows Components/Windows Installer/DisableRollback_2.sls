# windows:SUPPORTED_Win2k
#
# This policy setting prohibits Windows Installer from generating and saving the files it needs to reverse an interrupted or unsuccessful installation.
# 
# If you enable this policy setting, Windows Installer is prevented from recording the original state of the system and sequence of changes it makes during installation. It also prevents Windows Installer from retaining files it intends to delete later. As a result, Windows Installer cannot restore the computer to its original state if the installation does not complete.
# 
# This policy setting is designed to reduce the amount of temporary disk space required to install programs. Also, it prevents malicious users from interrupting an installation to gather data about the internal state of the computer or to search secure system files. However, because an incomplete installation can render the system or a program inoperable, do not use this policy setting unless it is essential.
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. If the policy setting is enabled in either folder, it is considered be enabled, even if it is explicitly disabled in the other folder.
Prohibit rollback:
  lgpo.set:
  - name: DisableRollback_2
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_WindowsXP
#
# This policy setting prevents Windows Installer from creating a System Restore checkpoint each time an application is installed. System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files.
# 
# If you enable this policy setting, the Windows Installer does not generate System Restore checkpoints when installing applications.
# 
# If you disable or do not configure this policy setting, by default, the Windows Installer automatically creates a System Restore checkpoint each time an application is installed, so that users can restore their computer to the state it was in before installing the application.
Turn off creation of System Restore checkpoints:
  lgpo.set:
  - name: MSI_DisableSRCheckPoints
  - setting: Enabled
  - policy_class: Machine

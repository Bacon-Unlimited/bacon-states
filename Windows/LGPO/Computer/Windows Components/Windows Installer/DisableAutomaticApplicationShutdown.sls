# SUPPORTED_MSI40
#
# This policy setting controls Windows Installer's interaction with the Restart Manager. The Restart Manager API can eliminate or reduce the number of system restarts that are required to complete an installation or update.
# 
# If you enable this policy setting, you can use the options in the Prohibit Use of Restart Manager box to control file in use detection behavior.
# 
# -- The "Restart Manager On" option instructs Windows Installer to use Restart Manager to detect files in use and mitigate a system restart, when possible.
# 
# -- The "Restart Manager Off" option turns off Restart Manager for file in use detection and the legacy file in use behavior is used.
# 
# -- The "Restart Manager Off for Legacy App Setup" option applies to packages that were created for Windows Installer versions lesser than 4.0. This option lets those packages display the legacy files in use UI while still using Restart Manager for detection.
# 
# If you disable or do not configure this policy setting, Windows Installer will use Restart Manager to detect files in use and mitigate a system restart, when possible.
Prohibit use of Restart Manager:
  lgpo.set:
  - name: DisableAutomaticApplicationShutdown
  - setting:
      DisableAutomaticApplicationShutdown: enum-placeholder
  - policy_class: Machine

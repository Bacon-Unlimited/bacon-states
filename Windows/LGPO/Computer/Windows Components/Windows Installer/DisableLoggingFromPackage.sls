# SUPPORTED_MSI40
#
# This policy setting controls Windows Installer's processing of the MsiLogging property. The MsiLogging property in an installation package can be used to enable automatic logging of all install operations for the package.
# 
# If you enable this policy setting, you can use the options in the Disable logging via package settings box to control automatic logging via package settings behavior.
# 
# -- The "Logging via package settings on" option instructs Windows Installer to automatically generate log files for packages that include the MsiLogging property.
# 
# -- The "Logging via package settings off" option turns off the automatic logging behavior when specified via the MsiLogging policy. Log files can still be generated using the logging command line switch or the Logging policy.
# 
# If you disable or do not configure this policy setting, Windows Installer will automatically generate log files for those packages that include the MsiLogging property.
Turn off logging via package settings:
  lgpo.set:
  - name: DisableLoggingFromPackage
  - setting:
      DisableLoggingFromPackage: enum-placeholder
  - policy_class: Machine

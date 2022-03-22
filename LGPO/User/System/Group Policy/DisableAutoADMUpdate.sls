# windows:SUPPORTED_WindowsPreVista
#
# Prevents the system from updating the Administrative Templates source files automatically when you open the Group Policy Object Editor.  Administrators might want to use this if they are concerned about the amount of space used on the system volume of a DC.
# 
# By default, when you start the Group Policy Object Editor, a timestamp comparison is performed on the source files in the local %SYSTEMROOT%\inf directory and the source files stored in the GPO.  If the local files are newer, they are copied into the GPO.
# 
# Changing the status of this setting to Enabled will keep any source files from copying to the GPO.
# 
# Changing the status of this setting to Disabled will enforce the default behavior.  Files will always be copied to the GPO if they have a later timestamp.
# 
# NOTE: If the Computer Configuration policy setting, "Always use local ADM files for the Group Policy Object Editor" is enabled, the state of this setting is ignored and always treated as Enabled.
Turn off automatic update of ADM files:
  lgpo.set:
  - name: DisableAutoADMUpdate
  - setting: Enabled
  - policy_class: User

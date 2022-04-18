# windows:SUPPORTED_WindowsPreVista
#
# Determines whether offline files are fully synchronized when users log off.
# 
# This setting also disables the "Synchronize all offline files before logging off" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.
# 
# If you enable this setting, offline files are fully synchronized. Full synchronization ensures that offline files are complete and current.
# 
# If you disable this setting, the system only performs a quick synchronization. Quick synchronization ensures that files are complete, but does not ensure that they are current.
# 
# If you do not configure this setting, the system performs a quick synchronization by default, but users can change this option.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To change the synchronization method without changing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging off" option.
Synchronize all offline files before logging off:
  lgpo.set:
  - name: Pol_SyncAtLogoff_1
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_WindowsPreVista
#
# Determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.
# 
# This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.
# 
# If you enable this setting, you can use the "Action" box to specify how computers in the group respond.
# 
# --  "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.
# 
# --  "Never go offline" indicates that network files are not available while the server is inaccessible.
# 
# If you disable this setting or select the "Work offline" option, users can work offline if disconnected.
# 
# If you do not configure this setting, users can work offline by default, but they can change this option.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer  Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.
# 
# Also, see the "Non-default server disconnect actions" setting.
Action on server disconnect:
  lgpo.set:
  - name: Pol_GoOfflineAction_2
  - setting:
      Lbl_GoOfflineActionCombo: enum-placeholder
  - policy_class: Machine

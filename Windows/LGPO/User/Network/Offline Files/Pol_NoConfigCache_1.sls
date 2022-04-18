# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from enabling, disabling, or changing the configuration of Offline Files.
# 
# This setting removes the Offline Files tab from the Folder Options dialog box. It also removes the Settings item from the Offline Files context menu and disables the Settings button on the Offline Files Status dialog box. As a result, users cannot view or change the options on the Offline Files tab or Offline Files dialog box.
# 
# This is a comprehensive setting that locks down the configuration you establish by using other settings in this folder.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: This setting provides a quick method for locking down the default settings for Offline Files. To accept the defaults, just enable this setting. You do not have to disable any other settings in this folder.
Prohibit user configuration of Offline Files:
  lgpo.set:
  - name: Pol_NoConfigCache_1
  - setting: Enabled
  - policy_class: User

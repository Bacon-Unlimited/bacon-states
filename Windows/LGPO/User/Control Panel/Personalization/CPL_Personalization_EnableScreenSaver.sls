# windows:SUPPORTED_Win2kSP1
#
# Enables desktop screen savers.
# 
# If you disable this setting, screen savers do not run. Also, this setting disables the Screen Saver section of the Screen Saver dialog in the Personalization or Display Control Panel. As a result, users cannot change the screen saver options.
# 
# If you do not configure it, this setting has no effect on the system.
# 
# If you enable it, a screen saver runs, provided the following two conditions hold: First, a valid screen saver on the client is specified through the "Screen Saver executable name" setting or through Control Panel on the client computer. Second, the screen saver timeout is set to a nonzero value through the setting or Control Panel.
# 
# Also, see the "Prevent changing Screen Saver" setting.
Enable screen saver:
  lgpo.set:
  - name: CPL_Personalization_EnableScreenSaver
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_Win2kSP1
#
# Specifies the screen saver for the user's desktop.
# 
# If you enable this setting, the system displays the specified screen saver on the user's desktop. Also, this setting disables the drop-down list of screen savers in the Screen Saver dialog in the Personalization or Display Control Panel, which prevents users from changing the screen saver.
# 
# If you disable this setting or do not configure it, users can select any screen saver.
# 
# If you enable this setting, type the name of the file that contains the screen saver, including the .scr file name extension. If the screen saver file is not in the %Systemroot%\System32 directory, type the fully qualified path to the file.
# 
# If the specified screen saver is not installed on a computer to which this setting applies, the setting is ignored.
# 
# Note: This setting can be superseded by the "Enable Screen Saver" setting.  If the "Enable Screen Saver" setting is disabled, this setting is ignored, and screen savers do not run.
Force specific screen saver:
  lgpo.set:
  - name: CPL_Personalization_SetScreenSaver
  - setting:
      ScreenSaverFilename: text-placeholder
  - policy_class: User

####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_SetScreenSaver.sls
#
# SUPPORTED WINDOWS OS
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

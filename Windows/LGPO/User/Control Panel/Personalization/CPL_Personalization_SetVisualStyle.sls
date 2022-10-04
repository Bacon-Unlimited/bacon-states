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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_SetVisualStyle.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting allows you to force a specific visual style file by entering the path (location) of the visual style file.
# 
# This can be a local computer visual style (aero.msstyles), or a file located on a remote server using a UNC path (\\Server\Share\aero.msstyles).
# 
# If you enable this setting, the visual style file that you specify will be used. Also, a user may not apply a different visual style when changing themes.
# 
# If you disable or do not configure this setting, the users can select the visual style that they want to use by changing themes (if the Personalization Control Panel is available).
# 
# Note: If this setting is enabled and the file is not available at user logon, the default visual style is loaded.
# 
# Note: When running Windows XP, you can select the Luna visual style by typing %windir%\resources\Themes\Luna\Luna.msstyles
# 
# Note: To select the Windows Classic visual style, leave the box blank beside "Path to Visual Style:" and enable this setting. When running Windows 8 or Windows RT, you cannot apply the Windows Classic visual style.
Force a specific visual style file or force Windows Classic:
  lgpo.set:
  - name: CPL_Personalization_SetVisualStyle
  - setting:
      Themes_Name: text-placeholder
  - policy_class: User

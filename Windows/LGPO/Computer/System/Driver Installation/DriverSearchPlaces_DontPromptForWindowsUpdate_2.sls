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
# LOCATION: \Computer\System\Driver Installation\DriverSearchPlaces_DontPromptForWindowsUpdate_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaToXPSP2
#
# Specifies whether the administrator will be prompted about going to Windows Update to search for device drivers using the Internet.
# 
# Note: This setting only has effect if "Turn off Windows Update device driver searching" in "Administrative Templates/System/Internet Communication Management/Internet Communication settings" is disabled or not configured.
# 
# If you enable this setting, administrators will not be prompted to search Windows Update.
# 
# If you disable or do not configure this setting, and "Turn off Windows Update device driver searching" is disabled or not configured, the administrator will be prompted for consent before going to Windows Update to search for device drivers.
Turn off Windows Update device driver search prompt:
  lgpo.set:
  - name: DriverSearchPlaces_DontPromptForWindowsUpdate_2
  - setting: Enabled
  - policy_class: Machine

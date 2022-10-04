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
# LOCATION: \User\System\Driver Installation\DriverSearchPlaces.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaToXP
#
# This setting configures the location that Windows searches for drivers when a new piece of hardware is found.
# 
# By default, Windows searches the following places for drivers: local installation, floppy drives, CD-ROM drives, Windows Update.
# 
# Using this setting, you may remove the floppy and CD-ROM drives from the search algorithm.
# 
# If you enable this setting, you can remove the locations by selecting the associated check box beside the location name.
# 
# If you disable or do not configure this setting, Windows searches the installation location, floppy drives, and CD-ROM drives.
# 
# Note: To prevent searching Windows Update for drivers also see "Turn off Windows Update device driver searching" in Administrative Templates/System/Internet Communication Management/Internet Communication settings.
Configure driver search locations:
  lgpo.set:
  - name: DriverSearchPlaces
  - setting:
      DriverSearchPlaces_CD: boolean-placeholder
      DriverSearchPlaces_Floppies: boolean-placeholder
      DriverSearchPlaces_WindowsUpdate: boolean-placeholder
  - policy_class: User

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

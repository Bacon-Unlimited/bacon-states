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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\DriverSearchPlaces_DontSearchWindowsUpdate.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaToXPSP2
#
# This policy setting specifies whether Windows searches Windows Update for device drivers when no local drivers for a device are present.
# 
# If you enable this policy setting, Windows Update is not searched when a new device is installed.
# 
# If you disable this policy setting, Windows Update is always searched for drivers when no local drivers are present.
# 
# If you do not configure this policy setting, searching Windows Update is optional when installing a device.
# 
# Also see "Turn off Windows Update device driver search prompt" in "Administrative Templates/System," which governs whether an administrator is prompted before searching Windows Update for device drivers if a driver is not found locally.
# 
# Note: This policy setting is replaced by "Specify Driver Source Search Order" in "Administrative Templates/System/Device Installation" on newer versions of Windows.
Turn off Windows Update device driver searching:
  lgpo.set:
  - name: DriverSearchPlaces_DontSearchWindowsUpdate
  - setting: Enabled
  - policy_class: Machine

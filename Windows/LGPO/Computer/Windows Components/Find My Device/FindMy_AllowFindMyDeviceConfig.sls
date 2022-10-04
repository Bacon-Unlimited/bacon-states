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
# LOCATION: \Computer\Windows Components\Find My Device\FindMy_AllowFindMyDeviceConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy turns on Find My Device.
# 
# When Find My Device is on, the device and its location are registered in the cloud so that the device can be located when the user initiates a Find command from account.microsoft.com. On devices that are compatible with active digitizers, enabling Find My Device will also allow the user to view the last location of use of their active digitizer on their device; this location is stored locally on the user's device after each use of their active digitizer.
# 
# When Find My Device is off, the device and its location are not registered and the Find My Device feature will not work.The user will also not be able to view the location of the last use of their active digitizer on their device.
#         
Turn On/Off Find My Device:
  lgpo.set:
  - name: FindMy_AllowFindMyDeviceConfig
  - setting: Enabled
  - policy_class: Machine

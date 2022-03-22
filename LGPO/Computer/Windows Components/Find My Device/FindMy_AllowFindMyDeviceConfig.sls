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

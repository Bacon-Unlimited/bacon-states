# windows:SUPPORTED_Windows_10_0
#
# Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and Group peers while on DC power (Battery).
# 
# The recommended value to set if you allow uploads on battery is 40 (for 40%). The device can download from peers while on battery regardless of this policy.
# 
# The value 0 means "not-limited"; The cloud service set default value will be used.
Allow uploads while the device is on battery while under set Battery level (percentage):
  lgpo.set:
  - name: MinBatteryPercentageAllowedToUpload
  - setting:
      MinBatteryPercentageAllowedToUpload: decimal-placeholder
  - policy_class: Machine

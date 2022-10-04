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
# LOCATION: \Computer\Windows Components\Delivery Optimization\MinBatteryPercentageAllowedToUpload.sls
#
# SUPPORTED WINDOWS OS
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

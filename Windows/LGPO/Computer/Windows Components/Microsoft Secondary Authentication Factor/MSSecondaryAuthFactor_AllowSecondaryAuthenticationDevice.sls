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
# LOCATION: \Computer\Windows Components\Microsoft Secondary Authentication Factor\MSSecondaryAuthFactor_AllowSecondaryAuthenticationDevice.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy allows users to use a companion device, such as a phone, fitness band, or IoT device, to sign on to a desktop computer running Windows 10. The companion device provides a second factor of authentication with Windows Hello.
# 
# If you enable or do not configure this policy setting, users can authenticate to Windows Hello using a companion device.
# 
# If you disable this policy, users cannot use a companion device to authenticate with Windows Hello.
Allow companion device for secondary authentication:
  lgpo.set:
  - name: MSSecondaryAuthFactor_AllowSecondaryAuthenticationDevice
  - setting: Enabled
  - policy_class: Machine

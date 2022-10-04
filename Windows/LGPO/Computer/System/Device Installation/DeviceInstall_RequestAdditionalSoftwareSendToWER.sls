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
# LOCATION: \Computer\System\Device Installation\DeviceInstall_RequestAdditionalSoftwareSendToWER.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS3ToWindows7
#
# Windows has a feature that allows a device driver to request additional software through the Windows Error Reporting infrastructure. This policy allows you to disable the feature.
# 
# If you enable this policy setting, Windows will not send an error report to request additional software even if this is specified by the device driver.
# 
# If you disable or do not configure this policy setting, Windows sends an error report when a device driver that requests additional software is installed.
Prevent Windows from sending an error report when a device driver requests additional software during installation:
  lgpo.set:
  - name: DeviceInstall_RequestAdditionalSoftwareSendToWER
  - setting: Enabled
  - policy_class: Machine

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
# LOCATION: \Computer\System\Device Installation\Device Installation Restrictions\DeviceInstall_Unspecified_Deny.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent the installation of devices that are not specifically described by any other policy setting.
# 
# NOTE: This policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting to provide more granular control. It is recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting instead of this policy setting.
# 
# If you enable this policy setting, Windows is prevented from installing or updating the driver package for any device that is not described by either the "Allow installation of devices that match any of these device IDs", the "Allow installation of devices for these device classes", or the "Allow installation of devices that match any of these device instance IDs" policy setting.
# 
# If you disable or do not configure this policy setting, Windows is allowed to install or update the driver package for any device that is not described by the "Prevent installation of devices that match any of these device IDs", "Prevent installation of devices for these device classes" policy setting, "Prevent installation of devices that match any of these device instance IDs", or "Prevent installation of removable devices" policy setting.
Prevent installation of devices not described by other policy settings:
  lgpo.set:
  - name: DeviceInstall_Unspecified_Deny
  - setting: Enabled
  - policy_class: Machine

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
# LOCATION: \Computer\System\Device Installation\Device Installation Restrictions\DeviceInstall_IDs_Allow.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is allowed to install. This policy setting is intended to be used only when the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting is enabled, however it may also be used with the "Prevent installation of devices not described by other policy settings" policy setting for legacy policy definitions.
# 
# When this policy setting is enabled together with the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting, Windows is allowed to install or update any device whose Plug and Play hardware ID or compatible ID appears in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:
# - Prevent installation of devices that match these device IDs
# - Prevent installation of devices that match any of these device instance IDs
# If the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting is not enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.
# 
# NOTE: The "Prevent installation of devices not described by other policy settings" policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting for supported target Windows 10 versions. It is recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting when possible.
# 
# Alternatively, if this policy setting is enabled together with the "Prevent installation of devices not described by other policy settings" policy setting, Windows is allowed to install or update any device whose Plug and Play hardware ID or compatible ID appears in the list you create, unless another policy setting specifically prevents that installation (for example, the "Prevent installation of devices that match any of these device IDs" policy setting, the "Prevent installation of devices for these device classes" policy setting, the "Prevent installation of devices that match any of these device instance IDs" policy setting, or the "Prevent installation of removable devices" policy setting).
# 
# If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, and no other policy setting describes the device, the "Prevent installation of devices not described by other policy settings" policy setting determines whether the device can be installed.
Allow installation of devices that match any of these device IDs:
  lgpo.set:
  - name: DeviceInstall_IDs_Allow
  - setting:
      DeviceInstall_IDs_Allow_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine

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
# LOCATION: \Computer\System\Device Installation\Device Installation Restrictions\DeviceInstall_IDs_Deny.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.
# 
# NOTE: To enable the "Allow installation of devices that match any of these device instance IDs" policy setting to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.
# 
# If you enable this policy setting, Windows is prevented from installing a device whose hardware ID or compatible ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.
Prevent installation of devices that match any of these device IDs:
  lgpo.set:
  - name: DeviceInstall_IDs_Deny
  - setting:
      DeviceInstall_IDs_Deny_List:
      - placeholder1
      - placeholder2
      DeviceInstall_IDs_Deny_Retroactive: boolean-placeholder
  - policy_class: Machine

# windows:SUPPORTED_Windows_10_0_RS5
#
# This policy setting will change the evaluation order in which Allow and Prevent policy settings are applied when more than one install policy setting is applicable for a given device. Enable this policy setting to ensure that overlapping device match criteria is applied based on an established hierarchy where more specific match criteria supersedes less specific match criteria. The hierarchical order of evaluation for policy settings that specify device match criteria is as follows:
# 
# Device instance IDs > Device IDs > Device setup class > Removable devices
# 
# Device instance IDs
# 1. Prevent installation of devices using drivers that match these device instance IDs
# 2. Allow installation of devices using drivers that match these device instance IDs
# 
# Device IDs
# 3. Prevent installation of devices using drivers that match these device IDs
# 4. Allow installation of devices using drivers that match these device IDs
# 
# Device setup class
# 5. Prevent installation of devices using drivers that match these device setup classes
# 6. Allow installation of devices using drivers that match these device setup classes
# 
# Removable devices
# 7. Prevent installation of removable devices
# 
# NOTE: This policy setting provides more granular control than the "Prevent installation of devices not described by other policy settings" policy setting. If these conflicting policy settings are enabled at the same time, the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting will be enabled and the other policy setting will be ignored.
# 
# If you disable or do not configure this policy setting, the default evaluation is used. By default, all "Prevent installation..." policy settings have precedence over any other policy setting that allows Windows to install a device.
Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria:
  lgpo.set:
  - name: DeviceInstall_Allow_Deny_Layered
  - setting: Enabled
  - policy_class: Machine

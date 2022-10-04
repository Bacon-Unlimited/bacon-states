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
# LOCATION: \Computer\System\Device Installation\Device Installation Restrictions\DeviceInstall_Policy_RebootTime.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting establishes the amount of time (in seconds) that the system will wait to reboot in order to enforce a change in device installation restriction policies.
# 
# If you enable this policy setting, set the amount of seconds you want the system to wait until a reboot.
# 
# If you disable or do not configure this policy setting, the system does not force a reboot.
# 
# Note: If no reboot is forced, the device installation restriction right will not take effect until the system is restarted.
Time (in seconds) to force reboot when required for policy changes to take effect:
  lgpo.set:
  - name: DeviceInstall_Policy_RebootTime
  - setting:
      DeviceInstall_Policy_RebootTime_Time: decimal-placeholder
  - policy_class: Machine

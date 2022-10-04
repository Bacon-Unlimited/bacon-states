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
# LOCATION: \User\System\Removable Storage Access\AccessRights_RebootTime_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the amount of time (in seconds) that the operating system waits to reboot in order to enforce a change in access rights to removable storage devices.
# 
# If you enable this policy setting, you can set the number of seconds you want the system to wait until a reboot.
# 
# If you disable or do not configure this setting, the operating system does not force a reboot.
# 
# Note: If no reboot is forced, the access right does not take effect until the operating system is restarted.
Set time (in seconds) to force reboot:
  lgpo.set:
  - name: AccessRights_RebootTime_1
  - setting:
      AccessRights_RebootTime_seconds: decimal-placeholder
  - policy_class: User

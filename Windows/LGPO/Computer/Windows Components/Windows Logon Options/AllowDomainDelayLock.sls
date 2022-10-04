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
# LOCATION: \Computer\Windows Components\Windows Logon Options\AllowDomainDelayLock.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether a user can change the time before a password is required when a Connected Standby device screen turns off.
# 
# If you enable this policy setting, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.
# 
# If you disable this policy setting, a user cannot change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.
# 
# If you don't configure this policy setting on a domain-joined device, a user cannot change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.
# 
# If you don't configure this policy setting on a workgroup device, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.
Allow users to select when a password is required when resuming from connected standby:
  lgpo.set:
  - name: AllowDomainDelayLock
  - setting: Enabled
  - policy_class: Machine

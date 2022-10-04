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
# LOCATION: \Computer\Windows Components\Sync your settings\DisableAppSyncSettingSync.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# 
#         Prevent the "AppSync" group from syncing to and from this PC.  This turns off and disables the "AppSync" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "AppSync" group will not be synced.
# 
# Use the option "Allow users to turn app syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "AppSync" group is on by default and configurable by the user.
#       
Do not sync Apps:
  lgpo.set:
  - name: DisableAppSyncSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine

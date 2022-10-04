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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\FirstUseNotificationEnabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting enables a notification in the system tray that appears when the User Experience Virtualization (UE-V) Agent runs for the first time.
# By default, a notification informs users that Company Settings Center, the user-facing name for the UE-V Agent, now helps to synchronize settings between their work computers.
# With this setting enabled, the notification appears the first time that the UE-V Agent runs.
# With this setting disabled, no notification appears.
# If you do not configure this policy setting, any defined values are deleted.
#       
First Use Notification:
  lgpo.set:
  - name: FirstUseNotificationEnabled
  - setting: Enabled
  - policy_class: Machine

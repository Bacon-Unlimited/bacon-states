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
# LOCATION: \Computer\Network\Offline Files\Pol_ReminderTimeout_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines how long updated reminder balloons are displayed.
# 
# Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the update reminder.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Reminder balloon lifetime:
  lgpo.set:
  - name: Pol_ReminderTimeout_2
  - setting:
      Lbl_ReminderTimeoutSpin: decimal-placeholder
  - policy_class: Machine

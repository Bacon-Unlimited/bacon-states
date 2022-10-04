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
# LOCATION: \User\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\WerQueue_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS2ToVista
#
# This policy setting determines the behavior of the Windows Error Reporting report queue.
# 
# If you enable this policy setting, you can configure report queue behavior by using the controls in the policy setting. When the Queuing behavior pull-down list is set to Default, Windows determines, when a problem occurs, whether the report should be placed in the reporting queue, or the user should be prompted to send it immediately. When Queuing behavior is set to Always queue, all reports are added to the queue until the user is prompted to send the reports, or until the user sends problem reports by using the Solutions to Problems page in Control Panel.
# 
# The Maximum number of reports to queue setting determines how many reports can be queued before older reports are automatically deleted. The setting for Number of days between solution check reminders determines the interval time between the display of system notifications that remind the user to check for solutions to problems. A value of 0 disables the reminder.
# 
# If you disable or do not configure this policy setting, Windows Error Reporting reports are not queued, and users can only send reports at the time that a problem occurs.
Configure Report Queue:
  lgpo.set:
  - name: WerQueue_1
  - setting:
      WerMaxQueueCount: decimal-placeholder
      WerMaxQueueSize: decimal-placeholder
      WerQueueBehavior: enum-placeholder
      WerUpdateCheck: decimal-placeholder
  - policy_class: User

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
# LOCATION: \Computer\Windows Components\Task Scheduler\DisableAdvanced_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This setting removes the "Open advanced properties for this task when I click Finish" checkbox from the last page of the Scheduled Task Wizard.  This policy is only designed to simplify task creation for beginning users.
# 
# The checkbox, when checked, instructs Task Scheduler to automatically open the newly created task's property sheet upon completion of the "Add Scheduled Task" wizard.  The task's property sheet allows users to change task characteristics such as: the program the task runs, details of its schedule, idle time and power management settings, and its security context.  Beginning users will often not be interested or confused by having the property sheet displayed automatically.  Note that the checkbox is not checked by default even if this setting is Disabled or Not Configured.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Hide Advanced Properties Checkbox in Add Scheduled Task Wizard:
  lgpo.set:
  - name: DisableAdvanced_2
  - setting: Enabled
  - policy_class: Machine

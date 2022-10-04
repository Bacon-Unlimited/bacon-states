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
# LOCATION: \Computer\Windows Components\Windows Update\RestartWarnRemind.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Enable this policy to control when notifications are displayed to warn users about a scheduled restart for the update installation deadline. Users are not able to postpone the scheduled restart once the deadline has been reached and the restart is automatically executed.
# 
# Specifies the amount of time prior to a scheduled restart to display the warning reminder to the user.
# 
# You can specify the amount of time prior to a scheduled restart to notify the user that the auto restart is imminent to allow them time to save their work.
# 
# If you disable or do not configure this policy, the default notification behaviors will be used.
#       
Configure auto-restart warning notifications schedule for updates:
  lgpo.set:
  - name: RestartWarnRemind
  - setting:
      RestartWarn: enum-placeholder
      RestartWarnRemind: enum-placeholder
  - policy_class: Machine

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
# LOCATION: \Computer\Printers\PruningRetryLog.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies whether or not to log events when the pruning service on a domain controller attempts to contact a computer before pruning the computer's printers.
# 
#           The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer does not respond to the contact attempt, the attempt is retried a specified number of times, at a specified interval. The "Directory pruning retry" setting determines the number of times the attempt is retried; the default value is two retries. The "Directory Pruning Interval" setting determines the time interval between retries; the default value is every eight hours. If the computer has not responded by the last contact attempt, its printers are pruned from the directory.
# 
#           If you enable this policy setting, the contact events are recorded in the event log.
# 
#           If you disable or do not configure this policy setting, the contact events are not recorded in the event log.
# 
#           Note: This setting does not affect the logging of pruning events; the actual pruning of a printer is always logged.
# 
#           Note: This setting is used only on domain controllers.
Log directory pruning retry events:
  lgpo.set:
  - name: PruningRetryLog
  - setting: Enabled
  - policy_class: Machine

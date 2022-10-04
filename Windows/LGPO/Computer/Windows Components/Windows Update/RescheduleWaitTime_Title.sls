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
# LOCATION: \Computer\Windows Components\Windows Update\RescheduleWaitTime_Title.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Windows7_To_Win2kSP3_Or_XPSP1
#
# Specifies the amount of time for Automatic Updates to wait, following system startup, before proceeding with a scheduled installation that was missed previously.
# 
# If the status is set to Enabled, a scheduled installation that did not take place earlier will occur the specified number of minutes after the computer is next started.
# 
# If the status is set to Disabled, a missed scheduled installation will occur with the next scheduled installation.
# 
# If the status is set to Not Configured, a missed scheduled installation will occur one minute after the computer is next started.
# 
# Note: This policy applies only when Automatic Updates is configured to perform scheduled installations of updates. If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
Reschedule Automatic Updates scheduled installations:
  lgpo.set:
  - name: RescheduleWaitTime_Title
  - setting:
      RescheduleWaitTime_Minutes2: decimal-placeholder
  - policy_class: Machine

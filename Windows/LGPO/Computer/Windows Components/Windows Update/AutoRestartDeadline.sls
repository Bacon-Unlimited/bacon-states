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
# LOCATION: \Computer\Windows Components\Windows Update\AutoRestartDeadline.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Specify the deadline before the PC will automatically restart to apply updates. The deadline can be set 2 to 14 days past the default restart date.
# 
# The restart may happen inside active hours.
# 
# If you disable or do not configure this policy, the PC will restart according to the default schedule.
# 
# Enabling either of the following two policies will override the above policy:
#     1. No auto-restart with logged on users for scheduled automatic updates installations.
#     2. Always automatically restart at scheduled time.
#       
Specify deadline before auto-restart for update installation:
  lgpo.set:
  - name: AutoRestartDeadline
  - setting:
      AutoRestartDeadline: enum-placeholder
      AutoRestartDeadlineForFeatureUpdates: enum-placeholder
  - policy_class: Machine

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
# LOCATION: \Computer\Windows Components\Maintenance Scheduler\WakeUpPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#           This policy setting allows you to configure Automatic Maintenance wake up policy.
# 
#           The maintenance wakeup policy specifies if Automatic Maintenance should make a wake request to the OS for the daily scheduled maintenance. Note, that if the OS power wake policy is explicitly disabled, then this setting has no effect.
# 
#           If you enable this policy setting, Automatic Maintenance will attempt to set OS wake policy and make a wake request for the daily scheduled time, if required.
# 
#           If you disable or do not configure this policy setting, the wake setting as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
#       
Automatic Maintenance WakeUp Policy:
  lgpo.set:
  - name: WakeUpPolicy
  - setting: Enabled
  - policy_class: Machine

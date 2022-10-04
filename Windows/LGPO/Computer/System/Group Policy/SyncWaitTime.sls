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
# LOCATION: \Computer\System\Group Policy\SyncWaitTime.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies how long Group Policy should wait for network availability notifications during startup policy processing. If the startup policy processing is synchronous, the computer is blocked until the network is available or the default wait time is reached. If the startup policy processing is asynchronous, the computer is not blocked and policy processing will occur in the background. In either case, configuring this policy setting overrides any system-computed wait times.
# 
# If you enable this policy setting, Group Policy will use this administratively configured maximum wait time and override any default or system-computed wait time.
# 
# If you disable or do not configure this policy setting, Group Policy will use the default wait time of 30 seconds on computers running Windows Vista operating system.
# 
Specify startup policy processing wait time:
  lgpo.set:
  - name: SyncWaitTime
  - setting:
      SyncWaitTime_Minutes: decimal-placeholder
  - policy_class: Machine

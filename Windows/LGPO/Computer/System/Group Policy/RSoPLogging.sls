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
# LOCATION: \Computer\System\Group Policy\RSoPLogging.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting allows you to enable or disable Resultant Set of Policy (RSoP) logging on a client computer.
# 
# RSoP logs information on Group Policy settings that have been applied to the client. This information includes details such as which Group Policy Objects (GPO) were applied, where they came from, and the client-side extension settings that were included.
# 
# If you enable this setting, RSoP logging is turned off.
# 
# If you disable or do not configure this setting, RSoP logging is turned on. By default, RSoP logging is always on.
# 
# Note: To view the RSoP information logged on a client computer, you can use the RSoP snap-in in the Microsoft Management Console (MMC).
Turn off Resultant Set of Policy logging:
  lgpo.set:
  - name: RSoPLogging
  - setting: Enabled
  - policy_class: Machine

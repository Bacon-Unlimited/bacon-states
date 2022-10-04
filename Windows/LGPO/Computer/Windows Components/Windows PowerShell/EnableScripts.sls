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
# LOCATION: \Computer\Windows Components\Windows PowerShell\EnableScripts.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WIN7
#
# This policy setting lets you configure the script execution policy, controlling which scripts are allowed to run.
# 
# If you enable this policy setting, the scripts selected in the drop-down list are allowed to run.
# 
# The "Allow only signed scripts" policy setting allows scripts to execute only if they are signed by a trusted publisher.
# 
# The "Allow local scripts and remote signed scripts" policy setting allows any local scrips to run; scripts that originate from the Internet must be signed by a trusted publisher.
# 
# The "Allow all scripts" policy setting allows all scripts to run.
# 
# If you disable this policy setting, no scripts are allowed to run.
# 
# Note: This policy setting exists under both "Computer Configuration" and "User Configuration" in the Local Group Policy Editor. The "Computer Configuration" has precedence over "User Configuration."
# 
# If you disable or do not configure this policy setting, it reverts to a per-machine preference setting; the default if that is not configured is "No scripts allowed."
Turn on Script Execution:
  lgpo.set:
  - name: EnableScripts
  - setting:
      ExecutionPolicy: enum-placeholder
  - policy_class: Machine

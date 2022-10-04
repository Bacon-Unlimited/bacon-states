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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Restrict File Download\IESF_PolicyExplorerProcesses_12.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting enables blocking of file download prompts that are not user initiated.
# 
# If you enable this policy setting, file download prompts that are not user initiated will be blocked for Internet Explorer processes.
# 
# If you disable this policy setting, prompting will occur for file downloads that are not user initiated for Internet Explorer processes.
# 
# If you do not configure this policy setting, the user's preference determines whether to prompt for file downloads that are not user initiated for Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_12
  - setting: Enabled
  - policy_class: User

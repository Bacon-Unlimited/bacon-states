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
# LOCATION: \User\System\Internet Communication Management\InternetManagement_RestrictCommunication_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting specifies whether Windows can access the Internet to accomplish tasks that require Internet resources.
# 
# If you enable this setting, all of the the policy settings listed in the "Internet Communication settings" section are set such that their respective features cannot access the Internet.
# 
# If you disable this policy setting, all of the the policy settings listed in the "Internet Communication settings" section are set such that their respective features can access the Internet.
# 
# If you do not configure this policy setting, all of the the policy settings in the "Internet Communication settings" section are set to not configured.
Restrict Internet communication:
  lgpo.set:
  - name: InternetManagement_RestrictCommunication_1
  - setting: Enabled
  - policy_class: User

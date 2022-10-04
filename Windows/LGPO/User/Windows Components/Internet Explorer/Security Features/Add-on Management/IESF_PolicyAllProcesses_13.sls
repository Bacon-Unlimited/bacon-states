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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Add-on Management\IESF_PolicyAllProcesses_13.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether processes respect add-on management user preferences (as reflected by Add-on Manager) or policy settings.  By default, any process other than the Internet Explorer processes or those listed in the 'Process List' policy setting ignore add-on management user preferences and policy settings.
# 
# If you enable this policy setting, all processes will respect add-on management user preferences and policy settings.
# 
# If you disable or do not configure this policy setting, all processes will not respect add-on management user preferences or policy settings.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_13
  - setting: Enabled
  - policy_class: User

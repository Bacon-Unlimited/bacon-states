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
# LOCATION: \User\Windows Components\Microsoft Edge\PreventSmartScreenPromptOverride.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites.
# 
# If you enable this setting, employees can't ignore Windows Defender SmartScreen warnings and they are blocked from continuing to the site.
# 
# If you disable or don't configure this setting, employees can ignore Windows Defender SmartScreen warnings and continue to the site.
Prevent bypassing Windows Defender SmartScreen prompts for sites:
  lgpo.set:
  - name: PreventSmartScreenPromptOverride
  - setting: Enabled
  - policy_class: User

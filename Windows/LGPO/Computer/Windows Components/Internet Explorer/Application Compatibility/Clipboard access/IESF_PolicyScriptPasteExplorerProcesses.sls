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
# LOCATION: \Computer\Windows Components\Internet Explorer\Application Compatibility\Clipboard access\IESF_PolicyScriptPasteExplorerProcesses.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to bypass prompting when a script that is running in the Internet Explorer process attempts to perform a Clipboard operation (delete, copy, or paste) and the URL action for the zone is set to prompt.
# 
# If you enable this policy setting, the user is not prompted when a script that is running in the Internet Explorer process performs a Clipboard operation. In the Internet Explorer process, if the zone behavior is currently set to prompt, it will be bypassed and enabled.
# 
# If you disable this policy setting, the user is prompted when a script that is running in the Internet Explorer process attempts to perform a Clipboard operation.
# 
# If you do not configure this policy setting, current values of the URL action for the Internet Explorer process prevail.
Bypass prompting for Clipboard access for scripts running in the Internet Explorer process:
  lgpo.set:
  - name: IESF_PolicyScriptPasteExplorerProcesses
  - setting: Enabled
  - policy_class: Machine

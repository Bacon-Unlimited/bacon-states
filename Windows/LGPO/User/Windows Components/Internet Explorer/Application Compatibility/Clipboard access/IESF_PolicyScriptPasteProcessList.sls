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
# LOCATION: \User\Windows Components\Internet Explorer\Application Compatibility\Clipboard access\IESF_PolicyScriptPasteProcessList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to define applications and processes that can access the Clipboard without prompting the user.
# 
# Note: Do not enter the Internet Explorer processes in this list. To enable or disable Internet Explorer processes, use the "Bypass prompting for Clipboard access for scripts running in the Internet Explorer process" policy. If the "Bypass prompting for Clipboard access for scripts running in any process" policy setting is enabled, the processes configured in this policy setting take precedence over that policy setting.
# 
# If you enable this policy setting and enter a value of 1, prompts are bypassed. If you enter a value of 0, prompts are not bypassed. Value Name is the name of the executable file. If Value Name is empty or the value is not 0 or 1, the policy setting is ignored.
# 
# If you enable this policy setting for an application or process in the list, a script can perform a Clipboard operation without prompting the user. This means that if the zone behavior is currently set to prompt, it will be bypassed and enabled.
# 
# If you disable this policy setting for an application or process in the list, a script that is running in the application or process cannot bypass the prompt for delete, copy, or paste operations from the Clipboard.
# 
# If you do not configure this policy setting, current values of the URL action for an application or process in the list prevail.
Define applications and processes that can access the Clipboard without prompting:
  lgpo.set:
  - name: IESF_PolicyScriptPasteProcessList
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: User

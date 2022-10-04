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
# LOCATION: \User\Windows Components\Internet Explorer\EnterpriseModeEnable.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.
# 
# If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.
# 
# If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.
Let users turn on and use Enterprise Mode from the Tools menu:
  lgpo.set:
  - name: EnterpriseModeEnable
  - setting:
      EnterReportBackPrompt: text-placeholder
  - policy_class: User

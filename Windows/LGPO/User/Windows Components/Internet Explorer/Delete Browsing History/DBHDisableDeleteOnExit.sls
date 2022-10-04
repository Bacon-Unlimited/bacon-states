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
# LOCATION: \User\Windows Components\Internet Explorer\Delete Browsing History\DBHDisableDeleteOnExit.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows the automatic deletion of specified items when the last browser window closes. The preferences selected in the Delete Browsing History dialog box (such as deleting temporary Internet files, cookies, history, form data, and passwords) are applied, and those items are deleted.
# 
# If you enable this policy setting, deleting browsing history on exit is turned on.
# 
# If you disable this policy setting, deleting browsing history on exit is turned off.
# 
# If you do not configure this policy setting, it can be configured on the General tab in Internet Options.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting has no effect.
Allow deleting browsing history on exit:
  lgpo.set:
  - name: DBHDisableDeleteOnExit
  - setting: Enabled
  - policy_class: User

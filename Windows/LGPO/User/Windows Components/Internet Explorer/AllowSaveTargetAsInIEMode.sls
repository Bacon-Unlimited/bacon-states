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
# LOCATION: \User\Windows Components\Internet Explorer\AllowSaveTargetAsInIEMode.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting allows admins to enable "Save Target As" context menu in Internet Explorer mode.
# 
# If you enable this policy, "Save Target As" will show up in the Internet Explorer mode context menu and work the same as Internet Explorer.
# 
# If you disable or do not configure this policy setting, "Save Target As" will not show up in the Internet Explorer mode context menu.
# 
# For more information, see https://go.microsoft.com/fwlink/?linkid=2102115
Allow "Save Target As" in Internet Explorer mode:
  lgpo.set:
  - name: AllowSaveTargetAsInIEMode
  - setting: Enabled
  - policy_class: User

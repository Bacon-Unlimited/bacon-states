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
# LOCATION: \User\Windows Components\Internet Explorer\Delete Browsing History\NoDelBrowsingHistory.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user from performing actions which will delete browsing history. For more information on browsing history Group Policy settings, see "Group Policies Settings in Internet Explorer 10" in the TechNet technical library.
# 
# If you enable this policy setting, the user cannot access the Delete Browsing History dialog box. Starting with Windows 8, users cannot click the Delete Browsing History button on the Settings charm.
# 
# If you disable or do not configure this policy setting, the user can access the Delete Browsing History dialog box. Starting with Windows 8, users can click the Delete Browsing History button on the Settings charm.
Prevent access to Delete Browsing History:
  lgpo.set:
  - name: NoDelBrowsingHistory
  - setting: Enabled
  - policy_class: User

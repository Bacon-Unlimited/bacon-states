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
# LOCATION: \User\Windows Components\Internet Explorer\Delete Browsing History\DBHDisableDeleteHistory.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting prevents the user from deleting the history of websites that he or she has visited. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, websites that the user has visited are preserved when he or she clicks Delete.
# 
# If you disable this policy setting, websites that the user has visited are deleted when he or she clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve visited websites when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting websites that the user has visited:
  lgpo.set:
  - name: DBHDisableDeleteHistory
  - setting: Enabled
  - policy_class: User

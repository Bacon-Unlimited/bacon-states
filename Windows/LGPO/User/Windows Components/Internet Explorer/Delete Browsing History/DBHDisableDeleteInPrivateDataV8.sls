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
# LOCATION: \User\Windows Components\Internet Explorer\Delete Browsing History\DBHDisableDeleteInPrivateDataV8.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8ONLY
#
# This policy setting prevents the user from deleting InPrivate Filtering data. Internet Explorer collects InPrivate Filtering data during browser sessions other than InPrivate Browsing sessions to determine which third-party items should be blocked when InPrivate Filtering is enabled. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, InPrivate Filtering data is preserved when the user clicks Delete.
# 
# If you disable this policy setting, InPrivate Filtering data is deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve InPrivate Filtering data when he or she clicks Delete.
Prevent deleting InPrivate Filtering data:
  lgpo.set:
  - name: DBHDisableDeleteInPrivateDataV8
  - setting: Enabled
  - policy_class: User

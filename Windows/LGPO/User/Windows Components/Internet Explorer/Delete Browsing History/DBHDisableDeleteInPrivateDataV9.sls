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
# LOCATION: \User\Windows Components\Internet Explorer\Delete Browsing History\DBHDisableDeleteInPrivateDataV9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# In Internet Explorer 9 and Internet Explorer 10:
# This policy setting prevents users from deleting ActiveX Filtering and Tracking Protection data, which includes the list of websites for which the user has chosen to disable ActiveX Filtering or Tracking Protection. In addition, Tracking Protection data is also collected if users turn on the Personalized Tracking Protection List, which blocks third-party items while the user is browsing.
# 
# With at least Internet Explorer 11:
# This policy setting prevents users from deleting ActiveX Filtering data, Tracking Protection data, and Do Not Track exceptions stored for visited websites.
# 
# This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, ActiveX Filtering, Tracking Protection and Do Not Track data is preserved when the user clicks Delete.
# 
# If you disable this policy setting, ActiveX Filtering, Tracking Protection and Do Not Track data is deleted when the user clicks Delete.
# 
# If you don't configure this policy setting, users can turn this feature on and off, determining whether to delete ActiveX Filtering, Tracking Protection, and Do Not Track data when clicking Delete.
Prevent deleting ActiveX Filtering, Tracking Protection, and Do Not Track data:
  lgpo.set:
  - name: DBHDisableDeleteInPrivateDataV9
  - setting: Enabled
  - policy_class: User

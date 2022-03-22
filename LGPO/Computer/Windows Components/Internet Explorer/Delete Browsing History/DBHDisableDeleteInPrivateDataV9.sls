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
  - policy_class: Machine

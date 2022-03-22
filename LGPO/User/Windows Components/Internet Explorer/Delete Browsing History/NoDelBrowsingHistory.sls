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

# SUPPORTED_WMP9
#
# This policy setting allows you to hide the Privacy tab in Windows Media Player.
# 
# If you enable this policy setting, the "Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet" check box on the Media Library tab is available, even though the Privacy tab is hidden, unless the "Prevent music file media information retrieval" policy setting is enabled.
# 
# The default privacy settings are used for the options on the Privacy tab unless the user changed the settings previously.
# 
# If you disable or do not configure this policy setting, the Privacy tab is not hidden, and users can configure any privacy settings not configured by other polices.
Hide Privacy Tab:
  lgpo.set:
  - name: HidePrivacyTab
  - setting: Enabled
  - policy_class: User

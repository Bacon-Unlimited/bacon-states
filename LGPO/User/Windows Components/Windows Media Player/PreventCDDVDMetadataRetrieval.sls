# SUPPORTED_WMP9
#
# This policy setting allows you to prevent media information for CDs and DVDs from being retrieved from the Internet.
# 
# If you enable this policy setting, the Player is prevented from automatically obtaining media information from the Internet for CDs and DVDs played by users. In addition, the Retrieve media information for CDs and DVDs from the Internet check box on the Privacy Options tab in the first use dialog box and on the Privacy tab in the Player are not selected and are not available.
# 
# If you disable or do not configure this policy setting, users can change the setting of the Retrieve media information for CDs and DVDs from the Internet check box.
Prevent CD and DVD Media Information Retrieval:
  lgpo.set:
  - name: PreventCDDVDMetadataRetrieval
  - setting: Enabled
  - policy_class: User

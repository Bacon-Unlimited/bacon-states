# 4OrLater
#
# Enabling this policy prevents users from adding UNC locations to the index from the Search and Indexing Options in Control Panel.  Any UNC locations that have already been added to the index by the user will not be removed.
# 
# When this policy is disabled or not configured, users will be able to add UNC locations to the index.
# 
# This policy has no effect if the Files on Microsoft Networks add-in is not installed.
# 
# Disabled by default.
Prevent adding UNC locations to index from Control Panel:
  lgpo.set:
  - name: HideUNCTab_2
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_Windows7To2k
#
# "This policy setting allows you to set the maximum number of shortcuts the system can display in the Recent Items menu on the Start menu.
# 
# The Recent Items menu contains shortcuts to the nonprogram files the user has most recently opened.
# 
# If you enable this policy setting, the system displays the number of shortcuts specified by the policy setting.
# 
# If you disable or do not configure this policy setting, by default, the system displays shortcuts to the 10 most recently opened documents."
Maximum number of recent documents:
  lgpo.set:
  - name: MaxRecentDocs
  - setting:
      MaxRecentDocs: decimal-placeholder
  - policy_class: User

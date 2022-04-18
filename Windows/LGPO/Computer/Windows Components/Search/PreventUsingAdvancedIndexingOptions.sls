# VistaOrRedist
#
# This policy setting hides or displays the Advanced Options dialog for Search and Indexing Options in the Control Panel.
# 
# If you enable this policy setting, the Advanced Options dialog for Search and Indexing Options in the Control Panel cannot be opened.
# 
# If you disable or do not configure this policy setting, users can acess the Advanced Options dialog for Search and Indexing Options in the Control Panel. This is the default for this policy setting.
Prevent the display of advanced indexing options for Windows Search in the Control Panel:
  lgpo.set:
  - name: PreventUsingAdvancedIndexingOptions
  - setting: Enabled
  - policy_class: Machine

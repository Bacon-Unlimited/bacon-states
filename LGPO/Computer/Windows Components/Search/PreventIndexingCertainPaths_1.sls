# 301OrLater
#
# If you enable this policy setting, you specify a list of paths to exclude from indexing. The user cannot enter any path that starts with one of the paths you specified.
# 
# If you enable and then disable this policy setting, users can index any path not restricted by other policies, but their original list of paths to index is not restored.
#       
Prevent indexing certain paths:
  lgpo.set:
  - name: PreventIndexingCertainPaths_1
  - setting:
      PreventIndexingCertainPaths:
      - placeholder1
      - placeholder2
  - policy_class: Machine

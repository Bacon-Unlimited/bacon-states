# 301OrLater
#
# Enabling this policy allows you to specify a list of paths to exclude from indexing by default. The user may override these paths and include them in indexing.
Default excluded paths:
  lgpo.set:
  - name: DefaultExcludedPaths_1
  - setting:
      DefaultExcludedPaths:
      - placeholder1
      - placeholder2
  - policy_class: Machine

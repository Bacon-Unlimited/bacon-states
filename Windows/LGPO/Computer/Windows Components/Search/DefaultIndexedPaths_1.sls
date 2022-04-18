# 301OrLater
#
# Enabling this policy allows you to specify a list of paths to index by default. The user may override these paths and exclude them from indexing.
Default indexed paths:
  lgpo.set:
  - name: DefaultIndexedPaths_1
  - setting:
      DefaultIndexedPaths:
      - placeholder1
      - placeholder2
  - policy_class: Machine

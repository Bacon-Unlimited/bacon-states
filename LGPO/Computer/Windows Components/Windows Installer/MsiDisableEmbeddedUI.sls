# SUPPORTED_MSI45
#
# This policy setting controls the ability to prevent embedded UI.
# 
# If you enable this policy setting, no packages on the system can run embedded UI.
# 
# If you disable or do not configure this policy setting, embedded UI is allowed to run.
Prevent embedded UI:
  lgpo.set:
  - name: MsiDisableEmbeddedUI
  - setting: Enabled
  - policy_class: Machine

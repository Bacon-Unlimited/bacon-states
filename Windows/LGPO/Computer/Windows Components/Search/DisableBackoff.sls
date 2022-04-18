# 4OrLater
#
# If enabled, the search indexer backoff feature will be disabled. Indexing will continue at full speed even when system activity is high. If disabled, backoff logic will be used to throttle back indexing activity when system activity is high. Default is disabled.
Disable indexer backoff:
  lgpo.set:
  - name: DisableBackoff
  - setting: Enabled
  - policy_class: Machine

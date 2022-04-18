# windows:SUPPORTED_Windows8
#
# This policy setting determines whether offline files are synchronized in the background when it could result in extra charges on cell phone or broadband plans.
# 
# If you enable this setting, synchronization can occur in the background when the user's network is roaming, near, or over the plan's data limit.  This may result in extra charges on cell phone or broadband plans.
# 
# If this setting is disabled or not configured, synchronization will not run in the background on network folders when the user's network is roaming, near, or over the plan's data limit. The network folder must also be in "slow-link" mode, as specified by the "Configure slow-link mode" policy to avoid network usage.
Enable file synchronization on costed networks:
  lgpo.set:
  - name: Pol_SyncOnCostedNetwork
  - setting: Enabled
  - policy_class: Machine

# 301OrLater
#
# If enabled, the indexer pauses whenever the computer is running on battery. If disabled, the indexing follows the default behavior. Default is disabled.
Prevent indexing when running on battery power to conserve energy:
  lgpo.set:
  - name: PreventIndexOnBattery
  - setting: Enabled
  - policy_class: Machine

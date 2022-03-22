# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enables background sync to server when on battery power.
Enable background sync to server when on battery power:
  lgpo.set:
  - name: PowerManagement_SyncOnBatteriesEnable
  - setting: Enabled
  - policy_class: Machine

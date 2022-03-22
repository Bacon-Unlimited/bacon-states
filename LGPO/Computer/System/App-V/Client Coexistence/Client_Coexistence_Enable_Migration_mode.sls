# windows:SUPPORTED_Windows7
#
# Migration mode allows the App-V client to modify shortcuts and FTA's for packages created using a previous version of App-V.
Enable Migration Mode:
  lgpo.set:
  - name: Client_Coexistence_Enable_Migration_mode
  - setting: Enabled
  - policy_class: Machine

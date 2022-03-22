# windows:SUPPORTED_WindowsVista
#
#   If enabled then do not allow the initiator iqn name to be changed. If disabled then the initiator iqn name may be changed.
Do not allow changes to initiator iqn name:
  lgpo.set:
  - name: iSCSIGeneral_ChangeIQNName
  - setting: Enabled
  - policy_class: Machine

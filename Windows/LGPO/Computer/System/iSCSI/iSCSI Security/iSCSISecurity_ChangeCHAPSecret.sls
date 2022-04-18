# windows:SUPPORTED_WindowsVista
#
#  If enabled then do not allow the initiator CHAP secret to be changed. If disabled then the initiator CHAP secret may be changed.
Do not allow changes to initiator CHAP secret:
  lgpo.set:
  - name: iSCSISecurity_ChangeCHAPSecret
  - setting: Enabled
  - policy_class: Machine

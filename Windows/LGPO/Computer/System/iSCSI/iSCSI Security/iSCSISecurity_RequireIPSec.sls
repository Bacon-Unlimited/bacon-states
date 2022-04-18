# windows:SUPPORTED_WindowsVista
#
# If enabled then only those connections that are configured for IPSec may be established. If disabled then connections that are configured for IPSec or connections not configured for IPSec may be established.
Do not allow connections without IPSec:
  lgpo.set:
  - name: iSCSISecurity_RequireIPSec
  - setting: Enabled
  - policy_class: Machine

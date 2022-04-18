# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off power save mode on the hybrid hard disks in the system.
# 
# If you enable this policy setting, the hard disks are not put into NV cache power save mode and no power savings are achieved.
# 
# If you disable this policy setting, the hard disks are put into an NV cache power saving mode. In this mode, the system tries to save power by aggressively spinning down the disk.
# 
# If you do not configure this policy setting, the default behavior is to allow the hybrid hard disks to be in power save mode.
# 
# Note: This policy setting is applicable only if the NV cache feature is on.
Turn off cache power mode:
  lgpo.set:
  - name: CachePowerModePolicy
  - setting: Enabled
  - policy_class: Machine

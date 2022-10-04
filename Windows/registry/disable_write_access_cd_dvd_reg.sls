##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state uses the registry to disable write access to floppy drives
# (including USB floppy drives) on Windows machines.
Disable_write_access_floppy_drives_registry:
  # See the documentation for the reg state module here:
  # https://docs.saltproject.io/en/latest/ref/states/all/salt.states.reg.html
  reg.present:
    - name: HKLM\Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56308-b6bf-11d0-94f2-00a0c91efb8b}
    - vname: Deny_Write
    - vtype: REG_DWORD
    - vdata: 1

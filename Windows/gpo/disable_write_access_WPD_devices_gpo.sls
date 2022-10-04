##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state uses local group policy to disable write access to WPD devices,
# which may include media players, cell phones, auxiliary displays, and CE devices,
# on Windows machines.
Disable_write_access_WPD_devices_GPO:
  # See the documentation for the lgpo state module here:
  # https://docs.saltproject.io/en/latest/ref/states/all/salt.states.win_lgpo.html
  lgpo.set:
    - name: 'System\Removable Storage Access\WPD Devices: Deny write access'
    - setting: Enabled
    - policy_class: Machine

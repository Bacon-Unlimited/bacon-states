################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

# This state uses the registry to disable write access to WPD devices,
# which may include media players, cell phones, auxiliary displays, and CE devices,
# on Windows machines.
Disable_write_access_WPD_devices_registry:
  # See the documentation for the reg state module here:
  # https://docs.saltproject.io/en/latest/ref/states/all/salt.states.reg.html
  reg.present:
    - name: HKLM\Software\Policies\Microsoft\Windows\RemovableStorageDevices\{F33FDC04-D1AC-4E8E-9A30-19BBD4B108AE}
    - vname: Deny_Write
    - vtype: REG_DWORD
    - vdata: 1

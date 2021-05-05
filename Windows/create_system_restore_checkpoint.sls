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

# This state creates a System Restore checkpoint on Windows.
# It will fail if System Restore is disabled.
# By default a new checkpoint will only be created if it's been more than 24 hours since the last checkpoint.
# The frequency of restore point creation can be changed by creating the DWORD value
# 'SystemRestorePointCreationFrequency' under the registry key
# 'HKLM\Software\Microsoft\WindowsNT\CurrentVersion\SystemRestore'.
# The value of this registry key indicates the necessary time interval (in minutes)
# between two restore point creation. The default value is 1440 minutes (24 hours).
# See notes here for more information:  https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/checkpoint-computer?view=powershell-5.1
Create System Restore Checkpoint:
  cmd.run:
    - name: Checkpoint-Computer -Description "Bacon Checkpoint" -RestorePointType MODIFY_SETTINGS
    - shell: powershell


# If you want to check if System Restore is on before attempting to run the command,
# you can add the following lines to the state:
#    - onlyif:
#      - fun: cmd.powershell
#        cmd: (gp "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore").RPSessionInterval -eq 1

# If you want to force System Restore to always be on for C:\,
# you can add the following lines to the state:
#    - unless:
#      - fun: cmd.run
#        cmd: Enable-ComputerRestore -Drive "C:\"
#        shell: powershell

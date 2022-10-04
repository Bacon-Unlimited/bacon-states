##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

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

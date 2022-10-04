##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state creates a scheduled task that runs every 2 hours to check if the Salt
# minion service has stopped and restart it if it's not running.
# NOTE:  This requires that the win_task state module has been distributed to
# the minion.  Currently only available on the Salt develop branch so it needs to
# be distributed as a custom module for now.
Create Bacon restart salt-minion scheduled task:
  task.present:
    - name: Bacon Restart Salt Minion if Stopped
    - force: True
    - action_type: Execute
    - cmd: 'powershell'
    - arguments: '-ExecutionPolicy Bypass -Command "&{if ((Get-Service salt-minion).Status -eq \"Stopped\") {Start-Service salt-minion}}"'
    - trigger_type: Daily
    - start_date: 2021-01-01
    - start_time: 00:00
    - days_interval: 1
    - repeat_interval: 2 hours
    - execution_time_limit: 1 day
    - ac_only: False

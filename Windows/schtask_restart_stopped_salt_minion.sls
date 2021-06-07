##os: windows
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

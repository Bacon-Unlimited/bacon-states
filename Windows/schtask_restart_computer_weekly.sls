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
Create scheduled task to restart computer:
  task.present:
    - name: Restart computer every Sunday at 3 AM
    - force: True
    - action_type: Execute
    - cmd: 'powershell'
    - arguments: '-ExecutionPolicy Bypass -Command "Restart-Computer -Force"'
    - trigger_type: Weekly
    - start_date: 2021-05-23
    - start_time: 03:00
    - weeks_interval: 1
    - days_of_week:
      - Sunday
    - execution_time_limit: 30 minutes
    - ac_only: False

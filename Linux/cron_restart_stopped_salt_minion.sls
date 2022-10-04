##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state creates a cron job that runs every 3 hours to check if the Salt
# minion service has stopped and restart it if it's not running.
bacon-restart-cron:
  cron.present:
    - name: salt_status=$(systemctl status salt-minion | grep Active | awk '{print $3; exit}'); if [ "$salt_status" = "(dead)" ]; then systemctl start salt-minion; fi;
    - hour: '*/3'
    # Use SHA-256 hash of above to create an identifier for the cron line.
    # This makes it easy to modify the cron job in the future without duplicating it.
    - identifier: 77ac55e32075413f31b8010097e144b4ea42de6e6a881b82d6adaa44150fd00c

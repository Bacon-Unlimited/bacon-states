##os: macos
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
    - name: if [[ ! $(launchctl list com.saltstack.salt.minion | grep PID) ]]; then launchctl kickstart -k system/com.saltstack.salt.minion; fi;
    - hour: '*/3'
    # Use SHA-256 hash of above to create an identifier for the cron line.
    # This makes it easy to modify the cron job in the future without duplicating it.
    - identifier: 815d813248fc2a8dcfbd85b50ea98474b27e7c6bb37ce4357228b2671b6eddf7

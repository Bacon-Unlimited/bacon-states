##os: macos
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

# This state creates a cron job that runs every 3 hours to check if the Salt
# minion service has stopped and restart it if it's not running.
bacon-restart-cron:
  cron.present:
    - name: if [[ ! $(launchctl list com.saltstack.salt.minion | grep PID) ]]; then launchctl kickstart -k system/com.saltstack.salt.minion; fi;
    - hour: '*/3'
    # Use SHA-256 hash of above to create an identifier for the cron line.
    # This makes it easy to modify the cron job in the future without duplicating it.
    - identifier: 815d813248fc2a8dcfbd85b50ea98474b27e7c6bb37ce4357228b2671b6eddf7

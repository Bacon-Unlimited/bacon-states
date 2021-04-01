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

# This state disables wireless on Windows by disabling the WLAN AutoConfig service.
Disable_wireless:
  # service.dead will make sure the service isn't running, and the enable parameter
  # allows us to make sure it's also disabled by passing False.
  # See documentation:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.service.html#salt.states.service.dead
  service.dead:
    - name: WlanSvc
    - enable: False

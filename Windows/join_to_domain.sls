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

# This state checks if a computer is joined to the domain.  If not, it will be joined.
# WARNING:  This is an example only.  It is not secure to store passwords in states.
Join_bacon_example_domain:
  # See the documentation for the win_system state module's join_domain function here:
  # https://docs.saltproject.io/en/latest/ref/states/all/salt.states.win_system.html#salt.states.win_system.join_domain
  system.join_domain:
    - name: bacon.example.com # Name of the domain
    - username: account_with_domain_join_rights@bacon.example.com
    - password: notsosecretpassword ### WARNING:  It is not secure to store passwords in states.  Do not use in production!
    - account_ou: OU=Endpoints,DC=bacon,DC=example,DC=com # (optional) DN of the OU where the computer account should be created
    - account_exists: True # (optional) Needs to be set to True to allow re-using an existing computer account

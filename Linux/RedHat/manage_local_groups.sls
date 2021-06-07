##os: centos
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

# Ensures the usernames are members of the local wheel group.
# This does not remove any other users from the local wheel group.
# This state also ensures the "wheel" group exists but on a macOS
# machine it should already exist.
# Module documentation:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.group.html
add_user_to_local_wheel_group:
  group.present:
    - name: wheel
    - addusers:
      - bobuser
      - sallysuperuser

# Alternatively, if you want to strictly manage users in the local wheel
# group, you can use the 'members' parameter.  This state will ensure that no
# other members are in the local wheel group.
manage_local_wheel_group:
  group.present:
    - name: wheel
    - members:
      - root # ensure the root remains in the group
      - bobuser
      - sallyuser

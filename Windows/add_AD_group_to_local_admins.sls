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

# Ensures the usernames from Active Directory in DOMAIN are members
# of the local Administrators group.  This does not remove any other users
# from the local Administrators group.
# This state also ensures the "Administrators" group exists but on a Windows
# machine it should already exist.
# Module documentation:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.group.html
add_user_to_local_admins:
  group.present:
    - name: Administrators
    - addusers:
      - DOMAIN\bobuser
      - DOMAIN\sallyuser

# Alternatively, if you want to strictly manage users in the local Administrators
# group, you can use the 'members' parameter.  This state will ensure that no
# other members are in the local Administrators group.
manage_local_admins:
  group.present:
    - name: Administrators
    - members:
      - Administrator # ensure the local Administrator account remains in the group
      - DOMAIN\domain_local_administrators # ensure a specific AD group is in local Administrators
      - DOMAIN\bobuser
      - DOMAIN\sallyuser

# Managing a different local group works the same way, just change the name.
# This state ensures that only larryuser from the DOMAIN is in the local Power Users group.
manage_power_users:
  group.present:
    - name: Power Users
    - members:
      - DOMAIN\larryuser

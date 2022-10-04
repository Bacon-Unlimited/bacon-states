##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

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


##os: ubuntu################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# Ensures the usernames are members of the local sudo group.
# This does not remove any other users from the local sudo group.
# This state also ensures the "sudo" group exists but on a macOS
# machine it should already exist.
# Module documentation:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.group.html
add_user_to_local_sudo_group:
  group.present:
    - name: sudo
    - addusers:
      - bobuser
      - sallysuperuser

# Alternatively, if you want to strictly manage users in the local sudo
# group, you can use the 'members' parameter.  This state will ensure that no
# other members are in the local sudo group.
manage_local_sudo_group:
  group.present:
    - name: sudo
    - members:
      - root # ensure the root remains in the group
      - bobuser
      - sallyuser

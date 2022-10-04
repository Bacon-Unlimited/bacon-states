##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# Works with: MacOS, Windows, Ubuntu, CentOS
# 
# Every state begins with a name followed by a colon.
# The combination of a state name and state function must be unique among all the
# states in a single file or Profile.  For example, we cannot create another
# state in this file that uses the user.absent function with the same name "disable_and_purge_bigbadwolf".
# Descriptive names are best.
disable_and_purge_bigbadwolf:
  # The next line should be indented two spaces and sets the indentation level for the entire file.
  # Spacing is important in YAML formatting so pay careful attention to this.  Do not use tabs.
  # The line after the state name will be the state function.  In this case, we're
  # using the absent function from the user state module to remove a user from the system.
  # See the full documentation here:
  # https://docs.saltproject.io/en/latest/ref/states/all/salt.states.user.html#salt.states.user.absent
  user.absent:
    # The next level of indentation (two more spaces) starts the parameters for the state function.
    # Every function has a name parameter.  The purpose of that parameter varies by function.
    # In the case of the user.absent fuction, the name parameter indicates the username you
    # want to remove. The dash before the name parameter indicates that we're passing
    # a Python list to the function.  Each item in this list is a Python dictionary with
    # a key and a value.
    - name: bigbadwolf
    # The purge setting is a boolean indicating whether you want to delete the user's files along with their accont.
    # We do want that in this case so we'll set it to True.  The default is False, so if we didn't
    # want to purge the user's files, we could simply omit this parameter altogether.
    - purge: True
    # Finally, the force parameter allows us to remove the user even if they are logged in.
    # The default is False, but if the user is logged in when this state runs it will fail.
    # So we'll set this to True to ensure the user is removed even if they're logged in.
    - force: True

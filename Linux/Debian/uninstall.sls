##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state uninstalls Mozilla Firefox on Debian.
Uninstall_Firefox:
  pkg.removed:
    - name: firefox

################################################################################

# This states uninstalls Google Chrome on Debian (name based on the example install state).
Uninstall_Google_Chrome:
  pkg.removed:
    - name: google-chrome-stable

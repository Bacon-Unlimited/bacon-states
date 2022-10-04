##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state uninstalls Mozilla Firefox on macOS.
Uninstall_Firefox:
  file.absent:
    - name: /Applications/Firefox.app

################################################################################

# This states uninstalls Google Chrome on macOS.
Uninstall_Google_Chrome:
  file.absent:
    - name: /Applications/Google Chrome.app

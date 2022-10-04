##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state creates a new Time Machine snapshot on macOS.
# The snapshot will be created for all APFS volumes included in the
# Time Machine backup configuration.
Create Time Machine Snapshot:
  cmd.run:
    - name: tmutil localsnapshot

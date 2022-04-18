##os: macos
################################################################################
#  Bacon Unlimited. [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           But we still try really hard to make it work. If you don't like it,
#           submit a pull request.
################################################################################

# This state creates a new Time Machine snapshot on macOS.
# The snapshot will be created for all APFS volumes included in the
# Time Machine backup configuration.
Create Time Machine Snapshot:
  cmd.run:
    - name: tmutil localsnapshot

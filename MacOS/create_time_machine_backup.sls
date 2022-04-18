##os: macos
################################################################################
#  Bacon Unlimited. [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           But we still try really hard to make it work. If you don't like it,
#           submit a pull request.
################################################################################

# This state starts a Time Machine backup on macOS.
Start Time Machine Backup:
  cmd.run:
    - name: tmutil startbackup --auto

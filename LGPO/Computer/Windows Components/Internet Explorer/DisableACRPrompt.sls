# SUPPORTED_IE8
#
# This policy setting turns off Automatic Crash Recovery.
# 
# If you enable this policy setting, Automatic Crash Recovery does not prompt the user to recover his or her data after a program stops responding.
# 
# If you disable or do not configure this policy setting, Automatic Crash Recovery prompts the user to recover his or her data after a program stops responding.
Turn off Automatic Crash Recovery:
  lgpo.set:
  - name: DisableACRPrompt
  - setting: Enabled
  - policy_class: Machine

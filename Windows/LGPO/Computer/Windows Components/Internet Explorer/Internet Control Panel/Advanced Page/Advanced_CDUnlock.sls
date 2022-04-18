# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users receive a dialog requesting permission for active content on a CD to run.
# 
# If you enable this policy setting, active content on a CD will run without a prompt.
# 
# If you disable this policy setting, active content on a CD will always prompt before running.
# 
# If you do not configure this policy, users can choose whether to be prompted before running active content on a CD.
Allow active content from CDs to run on user machines:
  lgpo.set:
  - name: Advanced_CDUnlock
  - setting: Enabled
  - policy_class: Machine

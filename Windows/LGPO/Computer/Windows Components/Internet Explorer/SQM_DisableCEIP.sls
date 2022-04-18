# SUPPORTED_IE7_NONVISTA
#
# This policy setting prevents the user from participating in the Customer Experience Improvement Program (CEIP).
# 
# If you enable this policy setting, the user cannot participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.
# 
# If you disable this policy setting, the user must participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.
# 
# If you do not configure this policy setting, the user can choose to participate in the CEIP.
Prevent participation in the Customer Experience Improvement Program:
  lgpo.set:
  - name: SQM_DisableCEIP
  - setting: Enabled
  - policy_class: Machine

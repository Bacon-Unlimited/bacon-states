# SUPPORTED_IE7_NONVISTA
#
# This policy setting determines whether the Internet Connection Wizard was completed. If the Internet Connection Wizard was not completed, this policy setting starts the wizard automatically.
# 
# If you enable this policy setting, the Internet Connection Wizard starts automatically if it was not completed before. The user cannot prevent the wizard from starting.
# 
# If you disable this policy setting, the Internet Connection Wizard does not start automatically. The user can start the wizard manually.
# 
# If you do not configure this policy setting, the user can decide whether the Internet Connection Wizard should start automatically.
Start the Internet Connection Wizard automatically:
  lgpo.set:
  - name: ICWComplete
  - setting: Enabled
  - policy_class: User

# windows:SUPPORTED_WindowsVistaOnly
#
# This policy setting specifies the action that Windows takes when a user presses the Start menu Power button.
# 
# If you enable this policy setting, select one of the following actions:
# -Sleep
# -Hibernate
# -Shut down
# 
# If you disable this policy or do not configure this policy setting, users control this setting.
Select the Start menu Power button action (on battery):
  lgpo.set:
  - name: DCStartMenuButtonAction_2
  - setting:
      SelectDCStartMenuButtonAction: enum-placeholder
  - policy_class: Machine

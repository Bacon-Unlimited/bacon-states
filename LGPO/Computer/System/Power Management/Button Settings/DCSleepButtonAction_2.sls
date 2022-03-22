# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the action that Windows takes when a user presses the sleep button.
# 
# Possible actions include:
# -Take no action
# -Sleep
# -Hibernate
# -Shut down
# 
# If you enable this policy setting, you must select the desired action.
# 
# If you disable this policy setting or do not configure it, users can see and change this setting.
Select the Sleep button action (on battery):
  lgpo.set:
  - name: DCSleepButtonAction_2
  - setting:
      SelectDCSleepButtonAction: enum-placeholder
  - policy_class: Machine

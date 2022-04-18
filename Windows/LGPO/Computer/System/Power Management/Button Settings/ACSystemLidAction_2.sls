# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the action that Windows takes when a user closes the lid on a mobile PC.
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
Select the lid switch action (plugged in):
  lgpo.set:
  - name: ACSystemLidAction_2
  - setting:
      SelectACSystemLidAction: enum-placeholder
  - policy_class: Machine

# windows:SUPPORTED_Windows7Only
#
# Set the default action of the power button on the Start menu.
# 
# If you enable this setting, the Start Menu will set the power button to the chosen action, and not let the user change this action.
# 
# If you set the button to either Sleep or Hibernate, and that state is not supported on a computer, then the button will fall back to Shut Down.
# 
# If you disable or do not configure this setting, the Start Menu power button will be set to Shut Down by default, and the user can change this setting to another action.
Change Start Menu power button:
  lgpo.set:
  - name: PowerButtonAction
  - setting:
      PowerButtonActionDropdown: enum-placeholder
  - policy_class: User

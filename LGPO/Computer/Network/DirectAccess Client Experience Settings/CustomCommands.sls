# windows:SUPPORTED_Windows7
#
# Specifies commands configured by the administrator for custom logging. These commands will run in addition to default log commands.
Custom Commands:
  lgpo.set:
  - name: CustomCommands
  - setting:
      CustomCommands_Control:
      - placeholder1
      - placeholder2
  - policy_class: Machine

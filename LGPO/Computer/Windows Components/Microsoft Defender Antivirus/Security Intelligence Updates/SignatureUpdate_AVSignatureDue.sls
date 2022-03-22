# windows:SUPPORTED_Windows8
#
# This policy setting allows you to define the number of days that must pass before virus security intelligence is considered out of date. If security intelligence is determined to be out of date, this state may trigger several additional actions, including falling back to an alternative update source or displaying a warning icon in the user interface. By default, this value is set to 14 days.
# 
#     If you enable this setting, virus security intelligence will be considered out of date after the number of days specified have passed without an update.
# 
#     If you disable or do not configure this setting, virus security intelligence will be considered out of date after the default number of days have passed without an update.
Define the number of days before virus security intelligence is considered out of date:
  lgpo.set:
  - name: SignatureUpdate_AVSignatureDue
  - setting:
      SignatureUpdate_AVSignatureDue: decimal-placeholder
  - policy_class: Machine

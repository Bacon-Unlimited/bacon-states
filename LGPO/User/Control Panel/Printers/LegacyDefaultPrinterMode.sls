# windows:SUPPORTED_Windows_10_0
#
# This preference allows you to change default printer management.
# 
# If you enable this setting, Windows will not manage the default printer.
#  
# If you disable this setting, Windows will manage the default printer.
# 
# If you do not configure this setting, default printer management will not change. 
Turn off Windows default printer management:
  lgpo.set:
  - name: LegacyDefaultPrinterMode
  - setting: Enabled
  - policy_class: User

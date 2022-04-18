# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the brightness of the display when Windows automatically reduces brightness of the display.
# 
# If you enable this policy setting, you must provide a value, in percentage, indicating the display brightness when Windows automatically reduces brightness of the display.
# 
# If you disable or do not configure this policy setting, users control this setting.
Specify the display dim brightness (on battery):
  lgpo.set:
  - name: DisplayDimBrightnessDC
  - setting:
      EnterDisplayDimBrightness: decimal-placeholder
  - policy_class: Machine

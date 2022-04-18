# SUPPORTED_IE11
#
# This policy setting determines whether phone numbers are recognized and turned into hyperlinks, which can be used to invoke the default phone application on the system.
# 
# If you enable this policy setting, phone number detection is turned off. Users won't be able to modify this setting.
# 
# If you disable this policy setting, phone number detection is turned on. Users won't be able to modify this setting.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer settings. The default is on.
Turn off phone number detection:
  lgpo.set:
  - name: TurnOffFormatDetectionPhone
  - setting: Enabled
  - policy_class: User

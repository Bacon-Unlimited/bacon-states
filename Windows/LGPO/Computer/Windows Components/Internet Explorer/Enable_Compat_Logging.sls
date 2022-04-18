# SUPPORTED_IE7
#
# This policy setting logs information that is blocked by new features in Internet Explorer. The logged compatibility information is displayed in the Windows Event Viewer.
# 
# If you enable this policy setting, the user can log information that is blocked by new Internet Explorer features. The user cannot turn off logging.
# 
# If you disable this policy setting, the user cannot log information that is blocked by new Internet Explorer features. The user cannot turn on logging.
# 
# If you do not configure this policy setting, the user can change the logging settings.
Turn on compatibility logging:
  lgpo.set:
  - name: Enable_Compat_Logging
  - setting: Enabled
  - policy_class: Machine

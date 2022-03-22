# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage the crash detection feature of add-on Management.
# 
# If you enable this policy setting, a crash in Internet Explorer will exhibit behavior found in Windows XP Professional Service Pack 1 and earlier, namely to invoke Windows Error Reporting. All policy settings for Windows Error Reporting continue to apply.
# 
# If you disable or do not configure this policy setting, the crash detection feature for add-on management will be functional.
Turn off Crash Detection:
  lgpo.set:
  - name: AddonManagement_RestrictCrashDetection
  - setting: Enabled
  - policy_class: Machine

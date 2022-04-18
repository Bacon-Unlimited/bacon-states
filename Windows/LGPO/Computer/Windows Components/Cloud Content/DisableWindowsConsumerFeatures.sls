# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting turns off experiences that help consumers make the most of their devices and Microsoft account.
# 
# If you enable this policy setting, users will no longer see personalized recommendations from Microsoft and notifications about their Microsoft account.
# 
# If you disable or do not configure this policy setting, users may see suggestions from Microsoft and notifications about their Microsoft account.
# 
# Note: This setting only applies to Enterprise and Education SKUs.
Turn off Microsoft consumer experiences:
  lgpo.set:
  - name: DisableWindowsConsumerFeatures
  - setting: Enabled
  - policy_class: Machine

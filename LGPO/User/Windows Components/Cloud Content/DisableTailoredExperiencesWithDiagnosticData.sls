# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy setting lets you prevent Windows from using diagnostic data to provide tailored experiences to the user.
# 
# If you enable this policy setting, Windows will not use diagnostic data from this device (this data may include browser, app and feature usage, depending on the "diagnostic data" setting value) to customize content shown on lock screen, Windows tips, Microsoft consumer features and other related features. If these features are enabled, users will still see recommendations, tips and offers, but they may be less relevant.
# 
# If you disable or do not configure this policy setting, Microsoft will use diagnostic data to provide personalized recommendations, tips and offers to tailor Windows for the user's needs, and make it work better for them.
# 
# Note: this setting does not control Cortana tailored experiences, since there are separate policies to configure it.
Do not use diagnostic data for tailored experiences:
  lgpo.set:
  - name: DisableTailoredExperiencesWithDiagnosticData
  - setting: Enabled
  - policy_class: User

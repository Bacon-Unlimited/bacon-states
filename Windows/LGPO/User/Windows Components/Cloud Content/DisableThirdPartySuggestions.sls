# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# If you enable this policy, Windows spotlight features like lock screen spotlight, suggested apps in Start menu or Windows tips will no longer suggest apps and content from third-party software publishers. Users may still see suggestions and tips to make them more productive with Microsoft features and apps.
# 
# If you disable or do not configure this policy, Windows spotlight features may suggest apps and content from third-party software publishers in addition to Microsoft apps and content.
Do not suggest third-party content in Windows spotlight:
  lgpo.set:
  - name: DisableThirdPartySuggestions
  - setting: Enabled
  - policy_class: User

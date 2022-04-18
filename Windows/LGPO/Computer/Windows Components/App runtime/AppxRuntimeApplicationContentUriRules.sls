# windows:SUPPORTED_Windows_6_3
#
# This policy setting lets you turn on Content URI Rules to supplement the static Content URI Rules that were defined as part of the app manifest and apply to all Windows Store apps that use the enterpriseAuthentication capability on a computer.
# 
# If you enable this policy setting, you can define additional Content URI Rules that all Windows Store apps that use the enterpriseAuthentication capability on a computer can use.
# 
# If you disable or don't set this policy setting, Windows Store apps will only use the static Content URI Rules.
Turn on dynamic Content URI Rules for Windows store apps:
  lgpo.set:
  - name: AppxRuntimeApplicationContentUriRules
  - setting:
      ListBox_ContentUriRules:
      - placeholder1
      - placeholder2
  - policy_class: Machine

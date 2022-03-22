# SUPPORTED_IE7
#
# This policy setting controls whether websites can open new Internet Explorer windows that have no status bar or Address bar.
# 
# If you enable this policy setting, websites can open new Internet Explorer windows that have no status bar or Address bar.
# 
# If you disable this policy setting, websites cannot open new Internet Explorer windows that have no status bar or Address bar.
# 
# If you do not configure this policy setting, the user can choose whether websites can open new Internet Explorer Windows that have no status bar or Address bar.
Allow websites to open windows without status bar or Address bar:
  lgpo.set:
  - name: IZ_Policy_AddressStatusBar_1
  - setting:
      IZ_Partname2104: enum-placeholder
  - policy_class: User

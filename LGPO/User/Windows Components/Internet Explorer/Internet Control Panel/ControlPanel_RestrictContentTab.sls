# SUPPORTED_IE5
#
# If you enable this policy setting, users are prevented from seeing and changing ratings, certificates, AutoComplete, Wallet, and Profile Assistant settings.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
Disable the Content page:
  lgpo.set:
  - name: ControlPanel_RestrictContentTab
  - setting: Enabled
  - policy_class: User

# SUPPORTED_IE5
#
# This AutoComplete feature suggests possible matches when users are filling up forms.
# 
# If you enable this setting, the user is not suggested matches when filling forms. The user cannot change it.
# 
# If you disable this setting, the user is suggested possible matches when filling forms. The user cannot change it.
# 
# If you do not configure this setting, the user has the freedom to turn on the auto-complete feature for forms.
# 
# To display this option, the users open the Internet Options dialog box, click the Contents Tab and click the Settings button.
Disable AutoComplete for forms:
  lgpo.set:
  - name: RestrictFormSuggest
  - setting: Enabled
  - policy_class: User

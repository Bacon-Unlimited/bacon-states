# SUPPORTED_IE5
#
# This AutoComplete feature can remember and suggest User names and passwords on Forms.
# 
# If you enable this setting, the user cannot change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms will be turned on. You have to decide whether to select "prompt me to save passwords".
# 
# If you disable this setting the user cannot change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms is turned off. The user also cannot opt to be prompted to save passwords.
# 
# If you do not configure this setting, the user has the freedom of turning on Auto complete for User name and passwords on forms and the option of prompting to save passwords. To display this option, the users open the Internet Options dialog box, click the Contents Tab and click the Settings button.
Turn on the auto-complete feature for user names and passwords on forms:
  lgpo.set:
  - name: RestrictFormSuggestPW
  - setting:
      ChkBox_PasswordAsk: boolean-placeholder
  - policy_class: User

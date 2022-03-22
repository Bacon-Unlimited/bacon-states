# windows:SUPPORTED_WindowsVista
#
# 
#         This policy turns off the autocorrect misspelled words option. This does not, however, prevent the user or an application from changing the setting programmatically.
# 
#         The autocorrect misspelled words option controls whether or not errors in typed text will be automatically corrected.
# 
#         If the policy is Enabled, then the option will be locked to not autocorrect misspelled words.
# 
#         If the policy is Disabled or Not Configured, then the user will be free to change the setting according to their preference.
# 
#         Note that the availability and function of this setting is dependent on supported languages being enabled.
Turn off autocorrect misspelled words:
  lgpo.set:
  - name: TurnOffAutocorrectMisspelledWords
  - setting: Enabled
  - policy_class: User

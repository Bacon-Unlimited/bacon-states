# windows:SUPPORTED_WindowsVista
#
# 
#         This policy turns off the highlight misspelled words option. This does not, however, prevent the user or an application from changing the setting programmatically.
# 
#         The highlight misspelled words option controls whether or next spelling errors in typed text will be highlighted.
# 
#         If the policy is Enabled, then the option will be locked to not highlight misspelled words.
# 
#         If the policy is Disabled or Not Configured, then the user will be free to change the setting according to their preference.
# 
#         Note that the availability and function of this setting is dependent on supported languages being enabled.
Turn off highlight misspelled words:
  lgpo.set:
  - name: TurnOffHighlightMisspelledWords
  - setting: Enabled
  - policy_class: User

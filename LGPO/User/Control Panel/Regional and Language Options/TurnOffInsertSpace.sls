# windows:SUPPORTED_WindowsVista
#
# 
#         This policy turns off the insert a space after selecting a text prediction option. This does not, however, prevent the user or an application from changing the setting programmatically.
# 
#         The insert a space after selecting a text prediction option controls whether or not a space will be inserted after the user selects a text prediction candidate when using the on-screen keyboard.
# 
#         If the policy is Enabled, then the option will be locked to not insert a space after selecting a text prediction.
# 
#         If the policy is Disabled or Not Configured, then the user will be free to change the setting according to their preference.
# 
#         Note that the availability and function of this setting is dependent on supported languages being enabled.
Turn off insert a space after selecting a text prediction:
  lgpo.set:
  - name: TurnOffInsertSpace
  - setting: Enabled
  - policy_class: User

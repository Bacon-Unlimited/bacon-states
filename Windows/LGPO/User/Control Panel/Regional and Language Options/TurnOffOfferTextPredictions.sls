# windows:SUPPORTED_WindowsVista
#
# 
#         This policy turns off the offer text predictions as I type option. This does not, however, prevent the user or an application from changing the setting programmatically.
# 
#         The offer text predictions as I type option controls whether or not text prediction suggestions will be presented to the user on the on-screen keyboard.
# 
#         If the policy is Enabled, then the option will be locked to not offer text predictions.
# 
#         If the policy is Disabled or Not Configured, then the user will be free to change the setting according to their preference.
# 
#         Note that the availability and function of this setting is dependent on supported languages being enabled.
Turn off offer text predictions as I type:
  lgpo.set:
  - name: TurnOffOfferTextPredictions
  - setting: Enabled
  - policy_class: User

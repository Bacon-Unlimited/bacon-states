# SUPPORTED_IE11
#
# This policy setting allows Internet Explorer to provide enhanced suggestions as the user types in the Address bar. To provide enhanced suggestions, the user's keystrokes are sent to Microsoft through Microsoft services.
# 
# If you enable this policy setting, users receive enhanced suggestions while typing in the Address bar. In addition, users won't be able to change the Suggestions setting on the Settings charm.
# 
# If you disable this policy setting, users won't receive enhanced suggestions while typing in the Address bar. In addition, users won't be able to change the Suggestions setting on the Settings charm.
# 
# If you don't configure this policy setting, users can change the Suggestions setting on the Settings charm.
Allow Microsoft services to provide enhanced suggestions as the user types in the Address bar:
  lgpo.set:
  - name: AllowServicePoweredQSA
  - setting: Enabled
  - policy_class: User

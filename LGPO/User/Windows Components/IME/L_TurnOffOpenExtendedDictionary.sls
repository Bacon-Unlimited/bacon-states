# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off Open Extended Dictionary.
# 
# If you enable this policy setting, Open Extended Dictionary is turned off. You cannot add a new Open Extended Dictionary.
# 
# For Japanese Microsoft IME, an Open Extended Dictionary that is added before enabling this policy setting is not used for conversion.
# 
# If you disable or do not configure this policy setting, Open Extended Dictionary can be added and used by default.
# 
# This policy setting is applied to Japanese Microsoft IME.
Turn off Open Extended Dictionary:
  lgpo.set:
  - name: L_TurnOffOpenExtendedDictionary
  - setting: Enabled
  - policy_class: User

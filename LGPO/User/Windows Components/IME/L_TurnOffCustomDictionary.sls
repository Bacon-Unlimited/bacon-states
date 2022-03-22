# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off the ability to use a custom dictionary.
# 
# If you enable this policy setting, you cannot add, edit, and delete words in the custom dictionary either with GUI tools or APIs. A word registered in the custom dictionary before enabling this policy setting can continue to be used for conversion.
# 
# If you disable or do not configure this policy setting, the custom dictionary can be used by default.
# 
# For Japanese Microsoft IME, [Clear auto-tuning information] works, even if this policy setting is enabled, and it clears self-tuned words from the custom dictionary.
# 
# This policy setting is applied to Japanese Microsoft IME.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off custom dictionary:
  lgpo.set:
  - name: L_TurnOffCustomDictionary
  - setting: Enabled
  - policy_class: User

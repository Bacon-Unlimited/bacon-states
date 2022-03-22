# windows:SUPPORTED_Windows8
#
# This policy setting allows you to include the Non-Publishing Standard Glyph in the candidate list when Publishing Standard Glyph for the word exists.
# 
# If you enable this policy setting, Non-Publishing Standard Glyph is not included in the candidate list when Publishing Standard Glyph for the word exists.
# 
# If you disable or do not configure this policy setting, both Publishing Standard Glyph and Non-Publishing Standard Glyph are included in the candidate list.
# 
# This policy setting applies to Japanese Microsoft IME only.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Do not include Non-Publishing Standard Glyph in the candidate list:
  lgpo.set:
  - name: L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList
  - setting: Enabled
  - policy_class: User

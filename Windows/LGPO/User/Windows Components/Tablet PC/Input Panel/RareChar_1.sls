# windows:SUPPORTED_WindowsVista
#
# Includes rarely used Chinese, Kanji, and Hanja characters when handwriting is converted to typed text. This policy applies only to the use of the Microsoft recognizers for Chinese (Simplified), Chinese (Traditional), Japanese, and Korean. This setting appears in Input Panel Options (in Windows 7 and Windows Vista only) only when these input languages or keyboards are installed. 
# 
# Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista) enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, rarely used Chinese, Kanji, and Hanja characters will be included in recognition results when handwriting is converted to typed text. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, rarely used Chinese, Kanji, and Hanja characters will not be included in recognition results when handwriting is converted to typed text. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, rarely used Chinese, Kanji, and Hanja characters will not be included in recognition results when handwriting is converted to typed text. Users will be able to configure this setting on the Ink to text conversion tab in Input Panel Options (in Windows 7 and Windows Vista).
Include rarely used Chinese, Kanji, or Hanja characters:
  lgpo.set:
  - name: RareChar_1
  - setting: Enabled
  - policy_class: User

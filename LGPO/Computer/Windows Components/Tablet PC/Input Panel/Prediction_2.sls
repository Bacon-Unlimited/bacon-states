# windows:SUPPORTED_Windows7
#
# Prevents the Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista) from providing text prediction suggestions. This policy applies for both the on-screen keyboard and the handwriting tab when the feature is available for the current input area and input language.
# 
# Touch Keyboard and Handwriting panel enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, Input Panel will not provide text prediction suggestions. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, Input Panel will provide text prediction suggestions. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, Input Panel will provide text prediction suggestions. Users will be able to configure this setting on the Text Completion tab in Input Panel Options in Windows 7 and Windows Vista.
#       
Disable text prediction:
  lgpo.set:
  - name: Prediction_2
  - setting: Enabled
  - policy_class: Machine

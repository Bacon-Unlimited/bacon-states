####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Tablet PC\Input Panel\RareChar_2.sls
#
# SUPPORTED WINDOWS OS
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
  - name: RareChar_2
  - setting: Enabled
  - policy_class: Machine

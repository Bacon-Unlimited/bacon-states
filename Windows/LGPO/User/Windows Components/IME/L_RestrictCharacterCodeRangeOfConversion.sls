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
# LOCATION: \User\Windows Components\IME\L_RestrictCharacterCodeRangeOfConversion.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to restrict character code range of conversion by setting character filter.
# 
# If you enable this policy setting, then only the character code ranges specified by this policy setting are used for conversion of IME.  You can specify multiple ranges by setting a value combined with a bitwise OR of following values:
# 
# 0x0001 // JIS208 area
# 0x0002 // NEC special char code
# 0x0004 // NEC selected IBM extended code
# 0x0008 // IBM extended code
# 0x0010 // Half width katakana code
# 0x0100 // EUDC(GAIJI)
# 0x0200 // S-JIS unmapped area
# 0x0400 // Unicode char
# 0x0800 // surrogate char
# 0x1000 // IVS char
# 0xFFFF // no definition.
# 
# If you disable or do not configure this policy setting, no range of characters are filtered by default.
# 
# This policy setting applies to Japanese Microsoft IME only.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Restrict character code range of conversion:
  lgpo.set:
  - name: L_RestrictCharacterCodeRangeOfConversion
  - setting:
      L_RestrictCharacterCodeRangeOfConversionID: text-placeholder
  - policy_class: User

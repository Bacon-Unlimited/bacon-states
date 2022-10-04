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
# LOCATION: \User\System\Y2K.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting determines how programs interpret two-digit years.
# 
# This policy setting affects only the programs that use this Windows feature to interpret two-digit years. If a program does not interpret two-digit years correctly, consult the documentation or manufacturer of the program.
# 
# If you enable this policy setting, the system specifies the largest two-digit year interpreted as being preceded by 20. All numbers less than or equal to the specified value are interpreted as being preceded by 20. All numbers greater than the specified value are interpreted as being preceded by 19.
# 
# For example, the default value, 2029, specifies that all two-digit years less than or equal to 29 (00 to 29) are interpreted as being preceded by 20, that is 2000 to 2029. Conversely, all two-digit years greater than 29 (30 to 99) are interpreted as being preceded by 19, that is, 1930 to 1999.
# 
# If you disable or do not configure this policy setting, Windows does not interpret two-digit year formats using this scheme for the program.
Century interpretation for Year 2000:
  lgpo.set:
  - name: Y2K
  - setting:
      Y2KYear: decimal-placeholder
  - policy_class: User

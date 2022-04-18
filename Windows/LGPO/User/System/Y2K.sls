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

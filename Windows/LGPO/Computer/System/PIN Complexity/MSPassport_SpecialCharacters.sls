# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Use this policy setting to configure the use of special characters in the PIN.  Allowable special characters are: ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~ .
# 
# If you enable this policy setting, Windows requires the user to include at least one special character in their PIN.
# 
# If you disable this policy setting, Windows does not allow the user to include special characters in their PIN.
# 
# If you do not configure this policy setting, Windows allows, but does not require, special characters in the PIN.
#         
Require special characters:
  lgpo.set:
  - name: MSPassport_SpecialCharacters
  - setting: Enabled
  - policy_class: Machine

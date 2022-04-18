# SUPPORTED_IE7VISTA
#
# This policy setting allows you to turn on Protected Mode. Protected Mode helps protect Internet Explorer from exploited vulnerabilities by reducing the locations that Internet Explorer can write to in the registry and the file system.
# 
# If you enable this policy setting, Protected Mode is turned on. The user cannot turn off Protected Mode.
# 
# If you disable this policy setting, Protected Mode is turned off. The user cannot turn on Protected Mode.
# 
# If you do not configure this policy setting, the user can turn on or turn off Protected Mode.
Turn on Protected Mode:
  lgpo.set:
  - name: IZ_Policy_TurnOnProtectedMode_2
  - setting:
      IZ_Partname2500: enum-placeholder
  - policy_class: User

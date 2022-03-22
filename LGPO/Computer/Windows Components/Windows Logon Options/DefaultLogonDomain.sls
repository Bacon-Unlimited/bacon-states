# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies a default logon domain, which might be a different domain than the domain to which the computer is joined. Without this policy setting, at logon, if a user does not specify a domain for logon, the domain to which the computer belongs is assumed as the default domain. For example if the computer belongs to the Fabrikam domain, the default domain for user logon is Fabrikam. 
# 
# If you enable this policy setting, the default logon domain is set to the specified domain, which might be different than the domain to which the computer is joined. 
# 
# If you disable or do not configure  this policy setting, the default logon domain is always set to the  domain to which the computer is joined.
Assign a default domain for logon:
  lgpo.set:
  - name: DefaultLogonDomain
  - setting:
      DefaultLogonDomain_Message: text-placeholder
  - policy_class: Machine

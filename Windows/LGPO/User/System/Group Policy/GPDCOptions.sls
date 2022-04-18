# windows:SUPPORTED_Win2k
#
# This policy setting determines which domain controller the Group Policy Object Editor snap-in uses.
# 
# If you enable this setting, you can which domain controller is used according to these options:
# 
# "Use the Primary Domain Controller" indicates that the Group Policy Object Editor snap-in reads and writes changes to the domain controller designated as the PDC Operations Master for the domain.
# 
# "Inherit from Active Directory Snap-ins" indicates that the Group Policy Object Editor snap-in reads and writes changes to the domain controller that Active Directory Users and Computers or Active Directory Sites and Services snap-ins use.
# 
# "Use any available domain controller" indicates that the Group Policy Object Editor snap-in can read and write changes to any available domain controller.
# 
# If you disable this setting or do not configure it, the Group Policy Object Editor snap-in uses the domain controller designated as the PDC Operations Master for the domain.
# 
# Note: To change the PDC Operations Master for a domain, in Active Directory Users and Computers, right-click a domain, and then click "Operations Masters."
Configure Group Policy domain controller selection:
  lgpo.set:
  - name: GPDCOptions
  - setting:
      GPDCOptionsDesc: enum-placeholder
  - policy_class: User

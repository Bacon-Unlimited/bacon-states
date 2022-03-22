# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses the list specified in TrustedHostsList to determine if the destination host is a trusted entity.
# 
# If you enable this policy setting, the WinRM client uses the list specified in TrustedHostsList to determine if the destination host is a trusted entity. The WinRM client uses this list when neither HTTPS nor Kerberos are used to authenticate the identity of the host.
# 
# If you disable or do not configure this policy setting and the WinRM client needs to use the list of trusted hosts, you must configure the list of trusted hosts locally on each computer.
Trusted Hosts:
  lgpo.set:
  - name: TrustedHosts
  - setting:
      TrustedHosts_List: text-placeholder
  - policy_class: Machine

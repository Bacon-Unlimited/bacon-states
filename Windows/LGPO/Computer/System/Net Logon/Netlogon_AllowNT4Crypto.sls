# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether the Net Logon service will allow the use of older cryptography algorithms that are used in Windows NT 4.0. The cryptography algorithms used in Windows NT 4.0 and earlier are not as secure as newer algorithms used in Windows 2000 or later, including this version of Windows.
# 
# By default, Net Logon will not allow the older cryptography algorithms to be used and will not include them in the negotiation of cryptography algorithms. Therefore, computers running Windows NT 4.0 will not be able to establish a connection to this domain controller.
#  
# If you enable this policy setting, Net Logon will allow the negotiation and use of older cryptography algorithms compatible with Windows NT 4.0. However, using the older algorithms represents a potential security risk.
# 
# If you disable this policy setting, Net Logon will not allow the negotiation and use of older cryptography algorithms. 
# 
# If you do not configure this policy setting, Net Logon will not allow the negotiation and use of older cryptography algorithms.
Allow cryptography algorithms compatible with Windows NT 4.0:
  lgpo.set:
  - name: Netlogon_AllowNT4Crypto
  - setting: Enabled
  - policy_class: Machine

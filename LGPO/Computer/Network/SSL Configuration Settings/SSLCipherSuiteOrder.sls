# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the cipher suites used by the Secure Socket Layer (SSL).
# 
# If you enable this policy setting, SSL cipher suites are prioritized in the order specified.
# 
# If you disable or do not configure this policy setting, default cipher suite order is used.
# 
# Link for all the cipherSuites: http://go.microsoft.com/fwlink/?LinkId=517265
# 
#       
SSL Cipher Suite Order:
  lgpo.set:
  - name: SSLCipherSuiteOrder
  - setting:
      Pol_SSLCipherSuiteOrder: text-placeholder
  - policy_class: Machine

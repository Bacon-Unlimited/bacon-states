# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines the cipher suites used by the SMB client.
# 
# If you enable this policy setting, cipher suites are prioritized in the order specified.
# 
# If you enable this policy setting and do not specify at least one supported cipher suite, or if you disable or do not configure this policy setting, the default cipher suite order is used.
# 
# SMB 3.11 cipher suites:
# 
# AES_128_GCM
# AES_128_CCM
# 
# SMB 3.0 and 3.02 cipher suites:
# 
# AES_128_CCM
# 
# How to modify this setting:
# 
# Arrange the desired cipher suites in the edit box, one cipher suite per line, in order from most to least preferred, with the most preferred cipher suite at the top. Remove any cipher suites you don't want to use.
# 
# Note: When configuring this security setting, changes will not take effect until you restart Windows.
Cipher suite order:
  lgpo.set:
  - name: Pol_CipherSuiteOrder
  - setting:
      MultiText_CipherSuiteOrder: multiText-placeholder
  - policy_class: Machine

# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines the priority order of ECC curves used with ECDHE cipher suites.
# 
# If you enable this policy setting, ECC curves are prioritized in the order specified.(Enter one Curve name per line)
# 
# If you disable or do not configure this policy setting, the default ECC curve order is used.
# 
# Default Curve Order
# ============
# curve25519
# NistP256
# NistP384
# 
# To See all the curves supported on the system, Use the following command:
# 
# CertUtil.exe -DisplayEccCurve
# 
#       
ECC Curve Order:
  lgpo.set:
  - name: SSLCurveOrder
  - setting:
      SSLCurveOrderList: multiText-placeholder
  - policy_class: Machine

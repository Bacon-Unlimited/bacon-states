# SUPPORTED_IE8
#
# This policy setting allows you to turn on the certificate address mismatch security warning. When this policy setting is turned on, the user is warned when visiting Secure HTTP (HTTPS) websites that present certificates issued for a different website address. This warning helps prevent spoofing attacks.
# 
# If you enable this policy setting, the certificate address mismatch warning always appears.
# 
# If you disable or do not configure this policy setting, the user can choose whether the certificate address mismatch warning appears (by using the Advanced page in the Internet Control panel).
Turn on certificate address mismatch warning:
  lgpo.set:
  - name: IZ_PolicyWarnCertMismatch
  - setting: Enabled
  - policy_class: Machine

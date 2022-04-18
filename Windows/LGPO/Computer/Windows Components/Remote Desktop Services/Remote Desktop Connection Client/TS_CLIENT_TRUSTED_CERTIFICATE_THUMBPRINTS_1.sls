# TS_SUPPORTED_Vista_SP1
#
# This policy setting allows you to specify a list of Secure Hash Algorithm 1 (SHA1) certificate thumbprints that represent trusted Remote Desktop Protocol (.rdp) file publishers.
# 
# If you enable this policy setting, any certificate with an SHA1 thumbprint that matches a thumbprint on the list is trusted. If a user tries to start an .rdp file that is signed by a trusted certificate, the user does not receive any warning messages when they start the file. To obtain the thumbprint, view the certificate details, and then click the Thumbprint field.
# 
# If you disable or do not configure this policy setting, no publisher is treated as a trusted .rdp publisher.
# 
# Notes:
# 
# You can define this policy setting in the Computer Configuration node or in the User Configuration node. If you configure this policy setting for the computer, the list of certificate thumbprints trusted for a user is a combination of the list defined for the computer and the list defined for the user.
# 
# This policy setting overrides the behavior of the "Allow .rdp files from valid publishers and user's default .rdp settings" policy setting.
# 
# If the list contains a string that is not a certificate thumbprint, it is ignored.
# 
Specify SHA1 thumbprints of certificates representing trusted .rdp publishers:
  lgpo.set:
  - name: TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1
  - setting:
      TRUSTED_CERTIFICATE_THUMBPRINTS: text-placeholder
  - policy_class: Machine

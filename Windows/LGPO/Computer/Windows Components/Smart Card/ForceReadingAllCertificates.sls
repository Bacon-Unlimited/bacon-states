# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage the reading of all certificates from the smart card for logon.
# 
# During logon Windows will by default only read the default certificate from the smart card unless it supports retrieval of all certificates in a single call.  This setting forces Windows to read all the certificates from the card.  This can introduce a significant performance decrease in certain situations.  Please contact your smart card vendor to determine if your smart card and associated CSP supports the required behavior.
# 
# If you enable this setting, then Windows will attempt to read all certificates from the smart card regardless of the feature set of the CSP.
# 
# If you disable or do not configure this setting, Windows will only attempt to read the default certificate from those cards that do not support retrieval of all certificates in a single call.  Certificates other than the default will not be available for logon.
Force the reading of all certificates from the smart card:
  lgpo.set:
  - name: ForceReadingAllCertificates
  - setting: Enabled
  - policy_class: Machine

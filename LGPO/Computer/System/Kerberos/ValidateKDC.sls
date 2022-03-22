# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the Kerberos client's behavior in validating the KDC certificate for smart card and system certificate logon.  
# 
# If you enable this policy setting, the Kerberos client requires that the KDC's X.509 certificate contains the KDC key purpose object identifier in the Extended Key Usage (EKU) extensions, and that the KDC's X.509 certificate contains a dNSName subjectAltName (SAN) extension that matches the DNS name of the domain. If the computer is joined to a domain, the Kerberos client requires that the KDC's X.509 certificate must be signed by a Certificate Authority (CA) in the NTAuth store. If the computer is not joined to a domain, the Kerberos client allows the root CA certificate on the smart card to be used in the path validation of the KDC's X.509 certificate.
# 
# If you disable or do not configure this policy setting, the Kerberos client requires only that the KDC certificate contain the Server Authentication purpose object identifier in the EKU extensions which can be issued to any server.
# 
Require strict KDC validation:
  lgpo.set:
  - name: ValidateKDC
  - setting: Enabled
  - policy_class: Machine

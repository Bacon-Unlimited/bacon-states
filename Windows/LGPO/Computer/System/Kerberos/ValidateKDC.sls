####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\System\Kerberos\ValidateKDC.sls
#
# SUPPORTED WINDOWS OS
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

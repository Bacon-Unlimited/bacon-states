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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\UserCertificateOID_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to associate an object identifier from a smart card certificate to a BitLocker-protected drive. This policy setting is applied when you turn on BitLocker.
# 
# The object identifier is specified in the enhanced key usage (EKU) of a certificate.  BitLocker can identify which certificates may be used to authenticate a user certificate to a BitLocker-protected drive by matching the object identifier in the certificate with the object identifier that is defined by this policy setting.
# 
# Default object identifier is 1.3.6.1.4.1.311.67.1.1
# 
# Note:  BitLocker does not require that a certificate have an EKU attribute, but if one is configured for the certificate it must be set to an object identifier (OID) that matches the OID configured for BitLocker.
# 
# If you enable this policy setting, the object identifier specified in the "Object identifier" box must match the object identifier in the smart card certificate.
# 
# If you disable or do not configure this policy setting, a default object identifier is used.
# 
#      
Validate smart card certificate usage rule compliance:
  lgpo.set:
  - name: UserCertificateOID_Name
  - setting:
      UserCertificateOID: text-placeholder
  - policy_class: Machine

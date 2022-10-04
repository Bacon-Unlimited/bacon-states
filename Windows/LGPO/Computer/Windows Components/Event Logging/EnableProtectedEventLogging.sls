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
# LOCATION: \Computer\Windows Components\Event Logging\EnableProtectedEventLogging.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting lets you configure Protected Event Logging.
# 
# If you enable this policy setting, components that support it will use the certificate you supply to encrypt potentially sensitive event log data before writing it to the event log. Data will be encrypted using the Cryptographic Message Syntax (CMS) standard and the public key you provide. You can use the Unprotect-CmsMessage PowerShell cmdlet to decrypt these encrypted messages, provided that you have access to the private key corresponding to the public key that they were encrypted with.
# 
# If you disable or do not configure this policy setting, components will not encrypt event log messages before writing them to the event log.
#             
Enable Protected Event Logging:
  lgpo.set:
  - name: EnableProtectedEventLogging
  - setting:
      EncryptionCertificate: multiText-placeholder
  - policy_class: Machine

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
# LOCATION: \Computer\Windows Components\Smart Card\EnumerateECCCerts.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control whether elliptic curve cryptography (ECC) certificates on a smart card can be used to log on to a domain.
# 
# If you enable this policy setting, ECC certificates on a smart card can be used to log on to a domain.
# 
# If you disable or do not configure this policy setting, ECC certificates on a smart card cannot be used to log on to a domain. 
# 
# Note: This policy setting only affects a user's ability to log on to a domain. ECC certificates on a smart card that are used for other applications, such as document signing, are not affected by this policy setting. 
# Note: If you use an ECDSA key to log on, you must also have an associated ECDH key to permit logons when you are not connected to the network.
Allow ECC certificates to be used for logon and authentication:
  lgpo.set:
  - name: EnumerateECCCerts
  - setting: Enabled
  - policy_class: Machine

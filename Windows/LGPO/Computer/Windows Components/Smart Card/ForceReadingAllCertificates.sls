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
# LOCATION: \Computer\Windows Components\Smart Card\ForceReadingAllCertificates.sls
#
# SUPPORTED WINDOWS OS
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

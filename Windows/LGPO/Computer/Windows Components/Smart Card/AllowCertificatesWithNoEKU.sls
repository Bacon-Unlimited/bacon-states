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
# LOCATION: \Computer\Windows Components\Smart Card\AllowCertificatesWithNoEKU.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you allow certificates without an Extended Key Usage (EKU) set to be used for logon.
# 
# In versions of Windows prior to Windows Vista, smart card certificates that are used for logon require an enhanced key usage (EKU) extension with a smart card logon object identifier. This policy setting can be used to modify that restriction.
# 
# If you enable this policy setting, certificates with the following attributes can also be used to log on with a smart card:
# - Certificates with no EKU
# - Certificates with an All Purpose EKU
# - Certificates with a Client Authentication EKU
# 
# If you disable or do not configure this policy setting, only certificates that contain the smart card logon object identifier can be used to log on with a smart card.
Allow certificates with no extended key usage certificate attribute:
  lgpo.set:
  - name: AllowCertificatesWithNoEKU
  - setting: Enabled
  - policy_class: Machine

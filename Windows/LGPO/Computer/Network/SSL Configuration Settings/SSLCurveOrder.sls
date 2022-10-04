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
# LOCATION: \Computer\Network\SSL Configuration Settings\SSLCurveOrder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines the priority order of ECC curves used with ECDHE cipher suites.
# 
# If you enable this policy setting, ECC curves are prioritized in the order specified.(Enter one Curve name per line)
# 
# If you disable or do not configure this policy setting, the default ECC curve order is used.
# 
# Default Curve Order
# ============
# curve25519
# NistP256
# NistP384
# 
# To See all the curves supported on the system, Use the following command:
# 
# CertUtil.exe -DisplayEccCurve
# 
#       
ECC Curve Order:
  lgpo.set:
  - name: SSLCurveOrder
  - setting:
      SSLCurveOrderList: multiText-placeholder
  - policy_class: Machine

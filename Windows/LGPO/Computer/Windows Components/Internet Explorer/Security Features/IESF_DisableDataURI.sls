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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\IESF_DisableDataURI.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to turn on or turn off Data URI support. A Data URI allows web developers to encapsulate images and .css files within the body of the URL and optionally encode them by using base 64 encoding. Malware filters or other network-based filters may not properly filter encapsulated data.
# 
# If you enable this policy setting, Data URI support is turned off. Without Data URI support, a Data URI will be interpreted as a failed URL.
# 
# If you disable this policy setting, Data URI support is turned on.
# 
# If you do not configure this policy setting, Data URI support can be turned on or off through the registry.
Turn off Data URI support:
  lgpo.set:
  - name: IESF_DisableDataURI
  - setting: Enabled
  - policy_class: Machine

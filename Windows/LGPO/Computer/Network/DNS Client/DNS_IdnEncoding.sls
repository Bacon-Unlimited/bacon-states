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
# LOCATION: \Computer\Network\DNS Client\DNS_IdnEncoding.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Specifies whether the DNS client should convert internationalized domain names (IDNs) to Punycode when the computer is on non-domain networks with no WINS servers configured.
# 
# If this policy setting is enabled, IDNs are not converted to Punycode.
# 
# If this policy setting is disabled, or if this policy setting is not configured, IDNs are converted to Punycode when the computer is on non-domain networks with no WINS servers configured.
Turn off IDN encoding:
  lgpo.set:
  - name: DNS_IdnEncoding
  - setting: Enabled
  - policy_class: Machine

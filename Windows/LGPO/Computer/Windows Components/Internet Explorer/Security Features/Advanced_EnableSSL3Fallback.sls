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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\Advanced_EnableSSL3Fallback.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to block an insecure fallback to SSL 3.0. When this policy is enabled, Internet Explorer will attempt to connect to sites using SSL 3.0 or below when TLS 1.0 or greater fails.
# 
# We recommend that you do not allow insecure fallback in order to prevent a man-in-the-middle attack.
# 
# This policy does not affect which security protocols are enabled.
# 
# If you disable this policy, system defaults will be used.
# 
Allow fallback to SSL 3.0 (Internet Explorer):
  lgpo.set:
  - name: Advanced_EnableSSL3Fallback
  - setting:
      Advanced_EnableSSL3FallbackOptions: enum-placeholder
  - policy_class: Machine

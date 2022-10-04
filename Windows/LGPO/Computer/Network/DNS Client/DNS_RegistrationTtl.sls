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
# LOCATION: \Computer\Network\DNS Client\DNS_RegistrationTtl.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# 
# Specifies the value of the time to live (TTL) field in A and PTR resource records that are registered by computers to which this policy setting is applied.
# 
# To specify the TTL, click Enabled and then enter a value in seconds (for example, 900 is 15 minutes).
# 
# If you enable this policy setting, the TTL value that you specify will be applied to DNS resource records registered for all network connections used by computers that receive this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the TTL settings specified in DNS. By default, the TTL is 1200 seconds (20 minutes).
TTL value for A and PTR records:
  lgpo.set:
  - name: DNS_RegistrationTtl
  - setting:
      DNS_RegistrationTtlLabel: decimal-placeholder
  - policy_class: Machine

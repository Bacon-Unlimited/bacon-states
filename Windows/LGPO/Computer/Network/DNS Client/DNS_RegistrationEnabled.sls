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
# LOCATION: \Computer\Network\DNS Client\DNS_RegistrationEnabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies if DNS dynamic update is enabled. Computers configured for DNS dynamic update automatically register and update their DNS resource records with a DNS server.
# 
# If you enable this policy setting, or you do not configure this policy setting, computers will attempt to use dynamic DNS registration on all network connections that have connection-specific dynamic DNS registration enabled. For a dynamic DNS registration to be enabled on a network connection, the connection-specific configuration must allow dynamic DNS registration, and this policy setting must not be disabled.
# 
# If you disable this policy setting, computers may not use dynamic DNS registration for any of their network connections, regardless of the configuration for individual network connections.
Dynamic update:
  lgpo.set:
  - name: DNS_RegistrationEnabled
  - setting: Enabled
  - policy_class: Machine

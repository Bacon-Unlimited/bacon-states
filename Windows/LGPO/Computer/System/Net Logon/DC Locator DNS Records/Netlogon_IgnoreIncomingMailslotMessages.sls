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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_IgnoreIncomingMailslotMessages.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to control the processing of incoming mailslot messages by a local domain controller (DC).
# 
# Note: To locate a remote DC based on its NetBIOS (single-label) domain name, DC Locator first gets the list of DCs from a WINS server that is configured in its local client settings. DC Locator then sends a mailslot message to each remote DC to get more information. DC location succeeds only if a remote DC responds to the mailslot message.
# 
# This policy setting is recommended to reduce the attack surface on a DC, and can be used in an environment without WINS, in an IPv6-only environment, and whenever DC location based on a NetBIOS domain name is not required. This policy setting does not affect DC location based on DNS names.
# 
# If you enable this policy setting, this DC does not process incoming mailslot messages that are used for NetBIOS domain name based DC location.
# 
# If you disable or do not configure this policy setting, this DC processes incoming mailslot messages. This is the default behavior of DC Locator.
Do not process incoming mailslot messages used for domain controller location based on NetBIOS domain names:
  lgpo.set:
  - name: Netlogon_IgnoreIncomingMailslotMessages
  - setting: Enabled
  - policy_class: Machine

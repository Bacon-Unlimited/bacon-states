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
# LOCATION: \Computer\Network\DNS Client\DNS_UpdateSecurityLevel.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies the security level for dynamic DNS updates.
# 
# To use this policy setting, click Enabled and then select one of the following values:
# 
# Unsecure followed by secure - computers send secure dynamic updates only when nonsecure dynamic updates are refused.
# 
# Only unsecure - computers send only nonsecure dynamic updates.
# 
# Only secure - computers send only secure dynamic updates.
# 
# If you enable this policy setting, computers that attempt to send dynamic DNS updates will use the security level that you specify in this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use local settings. By default, DNS clients attempt to use unsecured dynamic update first. If an unsecured update is refused, clients try to use secure update.
Update security level:
  lgpo.set:
  - name: DNS_UpdateSecurityLevel
  - setting:
      DNS_UpdateSecurityLevel_Box: enum-placeholder
  - policy_class: Machine

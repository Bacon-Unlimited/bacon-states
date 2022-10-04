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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_UseDynamicDns.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines if dynamic registration of the domain controller (DC) locator DNS resource records is enabled. These DNS records are dynamically registered by the Net Logon service and are used by the Locator algorithm to locate the DC.
# 
# If you enable this policy setting, DCs to which this setting is applied dynamically register DC Locator DNS resource records through dynamic DNS update-enabled network connections.
# 
# If you disable this policy setting, DCs will not register DC Locator DNS resource records.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify dynamic registration of the DC Locator DNS Records:
  lgpo.set:
  - name: Netlogon_UseDynamicDns
  - setting: Enabled
  - policy_class: Machine

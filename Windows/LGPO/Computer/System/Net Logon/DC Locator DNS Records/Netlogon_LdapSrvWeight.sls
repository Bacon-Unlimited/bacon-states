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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_LdapSrvWeight.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the Weight field in the SRV resource records registered by the domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC.
# 
# The Weight field in the SRV record can be used in addition to the Priority value to provide a load-balancing mechanism where multiple servers are specified in the SRV records Target field and are all set to the same priority. The probability with which the DNS client randomly selects the target host to be contacted is proportional to the Weight field value in the SRV record.
# 
# To specify the Weight in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 65535.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Set Weight in the DC Locator DNS SRV records:
  lgpo.set:
  - name: Netlogon_LdapSrvWeight
  - setting:
      Netlogon_LdapSrvWeightLabel: decimal-placeholder
  - policy_class: Machine

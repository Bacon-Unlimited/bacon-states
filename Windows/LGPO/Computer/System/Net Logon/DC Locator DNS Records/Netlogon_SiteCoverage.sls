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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_SiteCoverage.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the sites for which the domain controllers (DC) register the site-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it. 
# 
# The DC Locator DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.
# 
# To specify the sites covered by the DC Locator DNS SRV records, click Enabled, and then enter the sites names in a space-delimited format.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify sites covered by the DC Locator DNS SRV records:
  lgpo.set:
  - name: Netlogon_SiteCoverage
  - setting:
      Netlogon_SiteCoverageLabel: text-placeholder
  - policy_class: Machine

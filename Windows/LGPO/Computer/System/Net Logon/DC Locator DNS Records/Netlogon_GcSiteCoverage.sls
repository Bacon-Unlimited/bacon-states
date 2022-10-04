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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_GcSiteCoverage.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the sites for which the global catalogs (GC) should register site-specific GC locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the GC resides, and records registered by a GC configured to register GC Locator DNS SRV records for those sites without a GC that are closest to it. 
# 
# The GC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they are used to locate the GC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication. A GC is a domain controller that contains a partial replica of every domain in Active Directory.
# 
# To specify the sites covered by the GC Locator DNS SRV records, click Enabled, and enter the sites' names in a space-delimited format.
# 
# If you do not configure this policy setting, it is not applied to any GCs, and GCs use their local configuration.
Specify sites covered by the GC Locator DNS SRV Records:
  lgpo.set:
  - name: Netlogon_GcSiteCoverage
  - setting:
      Netlogon_GcSiteCoverageLabel: text-placeholder
  - policy_class: Machine

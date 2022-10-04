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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_AutoSiteCoverage.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines whether domain controllers (DC) will dynamically register DC Locator site-specific SRV records for the closest sites where no DC for the same domain exists (or no Global Catalog for the same forest exists). These DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC.
# 
# If you enable this policy setting, the DCs to which this setting is applied dynamically register DC Locator site-specific DNS SRV records for the closest sites where no DC for the same domain, or no Global Catalog for the same forest, exists.
# 
# If you disable this policy setting, the DCs will not register site-specific DC Locator DNS SRV records for any other sites but their own.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Use automated site coverage by the DC Locator DNS SRV Records:
  lgpo.set:
  - name: Netlogon_AutoSiteCoverage
  - setting: Enabled
  - policy_class: Machine

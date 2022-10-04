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
# LOCATION: \User\Windows Components\Internet Explorer\SiteDiscoveryDomainAllowList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to control which Domains are included in the discovery functionality of the Internet Explorer Site discovery Toolkit(SDTK). When enabled the feature will collect data from sites that are part of the domains configured in the policy. When disabled, or not configured, all domains will be included in site discovery. This policy can be used in conjunction with other policies controlling sites included in Site Discovery.
# 
# To configure the domain(s) included in data collection for the IE Site Discovery Toolkit, Add one domain per line to the text box. For example:
# 
# microsoft.sharepoint.com
# outlook.com
# onedrive.com
# timecard.contoso.com
# LOBApp.contoso.com
Limit Site Discovery output by Domain:
  lgpo.set:
  - name: SiteDiscoveryDomainAllowList
  - setting:
      SiteDiscoveryDomainAllowList: multiText-placeholder
  - policy_class: User

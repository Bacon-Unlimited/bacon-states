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
# LOCATION: \User\Windows Components\Internet Explorer\SiteDiscoveryZoneAllowList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to control which site zones are included in the discovery functionality of the Internet Explorer Site discovery Toolkit(SDTK). When enabled the feature will collect data from sites that are part of the zones configured in the policy. When disabled or not configured all Zones will be included in site discovery. This policy can be used in conjunction with other policies controlling sites included in Site Discovery.
# 
# To configure zone(s) included in site discovery, a binary number is formed based on the selected zones. The decimal representation of this number is used to represent this number in policy. For example:
# 
# 2 - Intranet site zone only
# Binary Representation - 00010
# 	0 - Restricted Sites Zone
# 	0 - Internet Zone
# 	0 - Trusted Sites Zone
# 	1 - Local Intranet Zone
# 	0 - Local Machine Zone
# 6 - Intranet and Trusted site zones only
# Binary Representation - 00110
# 	0 - Restricted Sites Zone
# 	0 - Internet Zone
# 	1 - Trusted Sites Zone
# 	1 - Local Intranet Zone
# 	0 - Local Machine Zone
# 22 - Trusted, Intranet, and Restricted site zones only
# Binary Representation - 10110
# 	1 - Restricted Sites Zone
# 	0 - Internet Zone
# 	1 - Trusted Sites Zone
# 	1 - Local Intranet Zone
# 	0 - Local Machine Zone
Limit Site Discovery output by Zone:
  lgpo.set:
  - name: SiteDiscoveryZoneAllowList
  - setting:
      SiteDiscoveryZoneAllowList: decimal-placeholder
  - policy_class: User

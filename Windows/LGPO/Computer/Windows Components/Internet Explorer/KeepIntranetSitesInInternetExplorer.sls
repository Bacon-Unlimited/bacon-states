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
# LOCATION: \Computer\Windows Components\Internet Explorer\KeepIntranetSitesInInternetExplorer.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# Prevents intranet sites from being opened in any browser except Internet Explorer. But note that If the Send all sites not included in the Enterprise Mode Site List to Microsoft Edge (RestrictIE) policy isnt enabled, this policy has no effect.
# 
# If you enable this policy, all intranet sites are opened in Internet Explorer 11. The only exceptions are sites listed in your Enterprise Mode Site List.
# 
# If you disable or dont configure this policy, all intranet sites are automatically opened in Microsoft Edge.
# 
# We strongly recommend keeping this policy in sync with the Send all intranet sites to Internet Explorer (SendIntranetToInternetExplorer) policy. Additionally, its best to enable this policy only if your intranet sites have known compatibility problems with Microsoft Edge.
# 
# Related policies:
# - Send all intranet sites to Internet Explorer (SendIntranetToInternetExplorer)
# - Send all sites not included in the Enterprise Mode Site List to Microsoft Edge (RestrictIE)
# 
# For more info about how to use this policy together with other related policies to create the optimal configuration for your organization, see https://go.microsoft.com/fwlink/?linkid=2094210.
Keep all intranet sites in Internet Explorer:
  lgpo.set:
  - name: KeepIntranetSitesInInternetExplorer
  - setting: Enabled
  - policy_class: Machine

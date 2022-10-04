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
# LOCATION: \User\Windows Components\Microsoft Edge\HomePages.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# When you enable the Configure Open Microsoft Edge With policy, you can configure one or more Start pages. When you enable this policy, users are not allowed to make changes to their Start pages.
# 
# If enabled, you must include URLs to the pages, separating multiple pages using angle brackets in the following format:
# 
#       <support.contoso.com><support.microsoft.com>
# 
# If disabled or not configured, the webpages specified in App settings loads as the default Start pages.
# 
# Version 1703 or later:
# If you do not want to send traffic to Microsoft, enable this policy and use the <about:blank> value, which honors domain- and non-domain-joined devices, when it is the only configured URL.
# 
# Version 1809:
# If enabled, and you select either Start page, New Tab page, or previous page in the Configure Open Microsoft Edge With policy, Microsoft Edge ignores the Configure Start Pages policy. If not configured or you set the Configure Open Microsoft Edge With policy to a specific page or pages, Microsoft Edge uses the Configure Start Pages policy.
# 
# Supported devices: Domain-joined or MDM-enrolled
# Related policy:
# - Configure Open Microsoft Edge With
# - Disable Lockdown of Start Pages
Configure Start pages:
  lgpo.set:
  - name: HomePages
  - setting:
      HomePagesPrompt: text-placeholder
  - policy_class: User

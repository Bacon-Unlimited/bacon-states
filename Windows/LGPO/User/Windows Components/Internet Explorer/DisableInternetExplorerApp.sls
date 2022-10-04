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
# LOCATION: \User\Windows Components\Internet Explorer\DisableInternetExplorerApp.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy lets you restrict launching of Internet Explorer as a standalone browser.
# 
# If you enable this policy, it:
# - Prevents Internet Explorer 11 from launching as a standalone browser.
# - Restricts Internet Explorer's usage to Microsoft Edge's native 'Internet Explorer mode'.
# - Redirects all attempts at launching Internet Explorer 11 to Microsoft Edge Stable Channel browser.
# - Overrides any other policies that redirect to Internet Explorer 11.
# 
# If you disable, or dont configure this policy, all sites are opened using the current active browser settings. Note: Microsoft Edge Stable Channel must be installed for this policy to take effect.
Disable Internet Explorer 11 as a standalone browser:
  lgpo.set:
  - name: DisableInternetExplorerApp
  - setting:
      NotifyDisableIEOptions: enum-placeholder
  - policy_class: User

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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\IZ_ProxyByPass.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting controls whether sites which bypass the proxy server are mapped into the local Intranet security zone.
# 
# If you enable this policy setting, sites which bypass the proxy server are mapped into the Intranet Zone.
# 
# If you disable this policy setting, sites which bypass the proxy server aren't necessarily mapped into the Intranet Zone (other rules might map one there).
# 
# If you do not configure this policy setting, users choose whether sites which bypass the proxy server are mapped into the Intranet Zone.
'Intranet Sites: Include all sites that bypass the proxy server':
  lgpo.set:
  - name: IZ_ProxyByPass
  - setting: Enabled
  - policy_class: Machine
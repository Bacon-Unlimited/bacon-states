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
# LOCATION: \Computer\Network\Hotspot Authentication\HotspotAuth_Enable.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting defines whether WLAN hotspots are probed for Wireless Internet Service Provider roaming (WISPr) protocol support.
# 
# If a WLAN hotspot supports the WISPr protocol, users can submit credentials when manually connecting to the network. If authentication is successful, users will be connected automatically on subsequent attempts. Credentials can also be configured by network operators.
# 
# If you enable this policy setting, or if you do not configure this policy setting, WLAN hotspots are automatically probed for WISPR protocol support.
# 
# If you disable this policy setting, WLAN hotspots are not probed for WISPr protocol support, and users can only authenticate with WLAN hotspots using a web browser.
# 
Enable Hotspot Authentication:
  lgpo.set:
  - name: HotspotAuth_Enable
  - setting: Enabled
  - policy_class: Machine

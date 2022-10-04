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
# LOCATION: \Computer\Network\DNS Client\DNS_UpdateTopLevelDomainZones.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies if computers may send dynamic updates to zones with a single label name. These zones are also known as top-level domain zones, for example: "com."
# 
# By default, a DNS client that is configured to perform dynamic DNS update will update the DNS zone that is authoritative for its DNS resource records unless the authoritative zone is a top-level domain or root zone.
# 
# If you enable this policy setting, computers send dynamic updates to any zone that is authoritative for the resource records that the computer needs to update, except the root zone.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers do not send dynamic updates to the root zone or top-level domain zones that are authoritative for the resource records that the computer needs to update.
Update top level domain zones:
  lgpo.set:
  - name: DNS_UpdateTopLevelDomainZones
  - setting: Enabled
  - policy_class: Machine

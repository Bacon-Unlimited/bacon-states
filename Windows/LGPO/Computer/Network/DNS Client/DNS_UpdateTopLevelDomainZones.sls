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

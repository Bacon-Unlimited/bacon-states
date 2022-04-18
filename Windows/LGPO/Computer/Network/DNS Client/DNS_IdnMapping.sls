# windows:SUPPORTED_Windows8
#
# Specifies whether the DNS client should convert internationalized domain names (IDNs) to the Nameprep form, a canonical Unicode representation of the string.
# 
# If this policy setting is enabled, IDNs are converted to the Nameprep form.
# 
# If this policy setting is disabled, or if this policy setting is not configured, IDNs are not converted to the Nameprep form.
IDN mapping:
  lgpo.set:
  - name: DNS_IdnMapping
  - setting: Enabled
  - policy_class: Machine

# windows:SUPPORTED_Windows8
#
# Specifies whether the DNS client should convert internationalized domain names (IDNs) to Punycode when the computer is on non-domain networks with no WINS servers configured.
# 
# If this policy setting is enabled, IDNs are not converted to Punycode.
# 
# If this policy setting is disabled, or if this policy setting is not configured, IDNs are converted to Punycode when the computer is on non-domain networks with no WINS servers configured.
Turn off IDN encoding:
  lgpo.set:
  - name: DNS_IdnEncoding
  - setting: Enabled
  - policy_class: Machine

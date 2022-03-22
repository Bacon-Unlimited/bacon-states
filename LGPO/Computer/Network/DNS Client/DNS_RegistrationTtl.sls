# windows:SUPPORTED_WindowsXP
#
# 
# Specifies the value of the time to live (TTL) field in A and PTR resource records that are registered by computers to which this policy setting is applied.
# 
# To specify the TTL, click Enabled and then enter a value in seconds (for example, 900 is 15 minutes).
# 
# If you enable this policy setting, the TTL value that you specify will be applied to DNS resource records registered for all network connections used by computers that receive this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the TTL settings specified in DNS. By default, the TTL is 1200 seconds (20 minutes).
TTL value for A and PTR records:
  lgpo.set:
  - name: DNS_RegistrationTtl
  - setting:
      DNS_RegistrationTtlLabel: decimal-placeholder
  - policy_class: Machine

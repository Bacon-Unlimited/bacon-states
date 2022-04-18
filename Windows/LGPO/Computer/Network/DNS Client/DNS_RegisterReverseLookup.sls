# windows:SUPPORTED_WindowsXP
#
# Specifies if DNS client computers will register PTR resource records.
# 
# By default, DNS clients configured to perform dynamic DNS registration will attempt to register PTR resource record only if they successfully registered the corresponding A resource record.
# 
# If you enable this policy setting, registration of PTR records will be determined by the option that you choose under Register PTR records.
# 
# To use this policy setting, click Enabled, and then select one of the following options from the drop-down list:
# 
# Do not register:  Computers will not attempt to register PTR resource records.
# 
# Register: Computers will attempt to register PTR resource records even if registration of the corresponding A records was not successful.
# 
# Register only if A record registration succeeds:  Computers will attempt to register PTR resource records only if registration of the corresponding A records was successful.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use locally configured settings.
Register PTR records:
  lgpo.set:
  - name: DNS_RegisterReverseLookup
  - setting:
      DNS_RegisterReverseLookup_Box: enum-placeholder
  - policy_class: Machine

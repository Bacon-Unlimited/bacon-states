# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to configure the server address, refresh interval, and issuer certificate authority (CA) of a target Subscription Manager.
# 
# If you enable this policy setting, you can configure the Source Computer to contact a specific FQDN (Fully Qualified Domain Name) or IP Address and request subscription specifics.
# 
# Use the following syntax when using the HTTPS protocol:
# Server=https://<FQDN of the collector>:5986/wsman/SubscriptionManager/WEC,Refresh=<Refresh interval in seconds>,IssuerCA=<Thumb print of the client authentication certificate>. When using the HTTP protocol, use port 5985.
# 
# If you disable or do not configure this policy setting, the Event Collector computer will not be specified.
Configure target Subscription Manager:
  lgpo.set:
  - name: SubscriptionManager
  - setting:
      SubscriptionManager_Listbox:
      - placeholder1
      - placeholder2
  - policy_class: Machine

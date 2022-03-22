# SUPPORTED_IE8
#
# This policy setting allows you to choose whether websites can request data across domains by using the XDomainRequest object. Note that this policy setting does not block client-side communication across domains through other features in Internet Explorer 8, and it does not prevent a site from requesting cross-domain data through a server.
# 
# If you enable this policy setting, websites cannot request data across domains by using the XDomainRequest object.
# 
# If you disable or do not configure this policy setting, websites can request data across domains by using the XDomainRequest object.
Turn off the XDomainRequest object:
  lgpo.set:
  - name: IESF_DisableXDR
  - setting: Enabled
  - policy_class: Machine

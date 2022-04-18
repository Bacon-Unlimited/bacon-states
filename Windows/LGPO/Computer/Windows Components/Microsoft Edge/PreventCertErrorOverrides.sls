# SUPPORTED_INTERNET_BROWSER_RS5
#
# Web security certificates are used to ensure a site your users go to is legitimate, and in some circumstances encrypts the data. With this policy, you can specify whether to prevent users from bypassing the security warning to sites that have SSL errors.
# 
# If enabled, overriding certificate errors are not allowed.
# 
# If disabled or not configured, overriding certificate errors are allowed.
Prevent certificate error overrides:
  lgpo.set:
  - name: PreventCertErrorOverrides
  - setting: Enabled
  - policy_class: Machine

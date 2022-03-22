# SUPPORTED_IE5
#
# Prevents automatic proxy scripts, which interact with a server to automatically configure users' proxy settings, from being stored in the users' cache.
# 
# If you enable this policy, automatic proxy scripts will not be stored temporarily on the users' computer.
# 
# If you disable this policy or do not configure it, automatic proxy scripts can be stored in the users' cache.
Disable caching of Auto-Proxy scripts:
  lgpo.set:
  - name: AutoProxyCache
  - setting: Enabled
  - policy_class: User

# SUPPORTED_IE8
#
# This policy setting allows you to turn on or turn off Data URI support. A Data URI allows web developers to encapsulate images and .css files within the body of the URL and optionally encode them by using base 64 encoding. Malware filters or other network-based filters may not properly filter encapsulated data.
# 
# If you enable this policy setting, Data URI support is turned off. Without Data URI support, a Data URI will be interpreted as a failed URL.
# 
# If you disable this policy setting, Data URI support is turned on.
# 
# If you do not configure this policy setting, Data URI support can be turned on or off through the registry.
Turn off Data URI support:
  lgpo.set:
  - name: IESF_DisableDataURI
  - setting: Enabled
  - policy_class: User

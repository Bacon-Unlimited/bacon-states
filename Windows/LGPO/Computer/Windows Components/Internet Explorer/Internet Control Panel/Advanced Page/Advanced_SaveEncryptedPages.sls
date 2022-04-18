# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will save encrypted pages that contain secure (HTTPS) information such as passwords and credit card numbers to the Internet Explorer cache, which may be insecure.
# 
# If you enable this policy setting, Internet Explorer will not save encrypted pages containing secure (HTTPS) information to the cache.
# 
# If you disable this policy setting, Internet Explorer will save encrypted pages containing secure (HTTPS) information to the cache.
# 
# If you do not configure this policy, Internet Explorer will save encrypted pages containing secure (HTTPS) information to the cache.
Do not save encrypted pages to disk:
  lgpo.set:
  - name: Advanced_SaveEncryptedPages
  - setting: Enabled
  - policy_class: Machine

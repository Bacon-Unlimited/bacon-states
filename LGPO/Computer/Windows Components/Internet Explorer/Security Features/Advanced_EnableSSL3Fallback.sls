# SUPPORTED_IE7
#
# This policy setting allows you to block an insecure fallback to SSL 3.0. When this policy is enabled, Internet Explorer will attempt to connect to sites using SSL 3.0 or below when TLS 1.0 or greater fails.
# 
# We recommend that you do not allow insecure fallback in order to prevent a man-in-the-middle attack.
# 
# This policy does not affect which security protocols are enabled.
# 
# If you disable this policy, system defaults will be used.
# 
Allow fallback to SSL 3.0 (Internet Explorer):
  lgpo.set:
  - name: Advanced_EnableSSL3Fallback
  - setting:
      Advanced_EnableSSL3FallbackOptions: enum-placeholder
  - policy_class: Machine

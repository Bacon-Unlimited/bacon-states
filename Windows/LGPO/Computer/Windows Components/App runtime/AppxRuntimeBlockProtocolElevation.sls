# windows:SUPPORTED_Windows8
#
# This policy setting lets you control whether Windows Store apps can open URIs using the default desktop app for a URI scheme. Because desktop apps run at a higher integrity level than Windows Store apps, there is a risk that a URI scheme launched by a Windows Store app might compromise the system by launching a desktop app.
# 
# If you enable this policy setting, Windows Store apps cannot open URIs in the default desktop app for a URI scheme; they can open URIs only in other Windows Store apps.
# 
# If you disable or do not configure this policy setting, Windows Store apps can open URIs in the default desktop app for a URI scheme.
# 
# Note: Enabling this policy setting does not block Windows Store apps from opening the default desktop app for the http, https, and mailto URI schemes. The handlers for these URI schemes are hardened against URI-based vulnerabilities from untrusted sources, reducing the associated risk.
Block launching desktop apps associated with a URI scheme:
  lgpo.set:
  - name: AppxRuntimeBlockProtocolElevation
  - setting: Enabled
  - policy_class: Machine

# SUPPORTED_IE5
#
# This setting specifies to automatically detect the proxy server settings used to connect to the Internet and customize Internet Explorer. This setting specifies that Internet explorer use the configuration settings provided in a file by the system administrator.
# 
# If you enable this policy setting, the user will not be able to do automatic configuration. You can import your current connection settings from your machine using Internet Explorer Maintenance under Admin Templates using group policy editor.
# 
# If you disable or do no configure this policy setting, the user will have the freedom to automatically configure these settings.
Disable changing Automatic Configuration settings:
  lgpo.set:
  - name: RestrictAutoconfig
  - setting: Enabled
  - policy_class: User

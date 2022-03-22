# SUPPORTED_IE5
#
# Specifies that Automatic Detection will be used to configure dial-up settings for users.
# 
# Automatic Detection uses a DHCP (Dynamic Host Configuration Protocol) or DNS server to customize the browser the first time it is started.
# 
# If you enable this policy, users' dial-up settings will be configured by Automatic Detection.
# 
# If you disable this policy or do not configure it, dial-up settings will not be configured by Automatic Detection, unless specified by the user.
Use Automatic Detection for dial-up connections:
  lgpo.set:
  - name: DialupSettings
  - setting: Enabled
  - policy_class: User

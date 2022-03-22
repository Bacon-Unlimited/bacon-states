# windows:SUPPORTED_Win2k
#
# Specifies the primary DNS suffix used by computers in DNS name registration and DNS name resolution.
# 
# To use this policy setting, click Enabled and enter the entire primary DNS suffix you want to assign. For example: microsoft.com.
# 
# Important: In order for changes to this policy setting to be applied on computers that receive it, you must restart Windows.
# 
# If you enable this policy setting, it supersedes the primary DNS suffix configured in the DNS Suffix and NetBIOS Computer Name dialog box using the System control panel.
# 
# You can use this policy setting to prevent users, including local administrators, from changing the primary DNS suffix.
# 
# If you disable this policy setting, or if you do not configure this policy setting, each computer uses its local primary DNS suffix, which is usually the DNS name of Active Directory domain to which it is joined.
Primary DNS suffix:
  lgpo.set:
  - name: DNS_PrimaryDnsSuffix
  - setting:
      DNS_PrimaryDnsSuffixBox: text-placeholder
  - policy_class: Machine

# SUPPORTED_IE6SP2
#
# Internet Explorer may be configured to prevent active content obtained through restricted protocols from running in an unsafe manner. This policy setting controls whether restricting content obtained through restricted protocols is prevented or allowed.
# 
# If you enable this policy setting, restricting content obtained through restricted protocols is allowed for all processes other than File Explorer or Internet Explorer.
# 
# If you disable this policy setting, restricting content obtained through restricted protocols is prevented for all processes other than File Explorer or Internet Explorer.
# 
# If you do not configure this policy setting, no policy is enforced for processes other than File Explorer and Internet Explorer.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_14
  - setting: Enabled
  - policy_class: User

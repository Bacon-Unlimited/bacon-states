# SUPPORTED_IE5
#
# Removes the Privacy tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, users are prevented from seeing and changing default settings for privacy.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
Disable the Privacy page:
  lgpo.set:
  - name: ControlPanel_RestrictPrivacyTab
  - setting: Enabled
  - policy_class: Machine

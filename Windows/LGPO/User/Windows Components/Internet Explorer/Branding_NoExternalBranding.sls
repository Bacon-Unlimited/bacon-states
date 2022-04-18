# SUPPORTED_IE5
#
# Prevents branding of Internet programs, such as customization of Internet Explorer and Outlook Express logos and title bars, by another party.
# 
# If you enable this policy, it prevents customization of the browser by another party, such as an Internet service provider or Internet content provider.
# 
# If you disable this policy or do not configure it, users could install customizations from another party-for example, when signing up for Internet services.
# 
# This policy is intended for administrators who want to maintain a consistent browser across an organization.
Disable external branding of Internet Explorer:
  lgpo.set:
  - name: Branding_NoExternalBranding
  - setting: Enabled
  - policy_class: User

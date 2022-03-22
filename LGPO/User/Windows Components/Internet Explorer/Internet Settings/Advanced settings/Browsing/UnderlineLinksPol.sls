# SUPPORTED_IE7
#
# This policy setting specifies how you want links on webpages to be underlined.
# 
# If you enable this policy setting, a user cannot choose when to underline links. You must specify when to underline links:
#     • Always
#     • Never
#     • Hover (when the mouse pointer pauses on a link)
# 
# If you disable or do not configure this policy setting, the user can choose when to underline links.
Turn off configuring underline links:
  lgpo.set:
  - name: UnderlineLinksPol
  - setting:
      UnderlineLinks: enum-placeholder
  - policy_class: User

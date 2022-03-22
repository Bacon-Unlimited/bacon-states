# SUPPORTED_IE9
#
# This policy allows the user to go directly to an intranet site for a one-word entry in the Address bar.
# 
# If you enable this policy setting, Internet Explorer goes directly to an intranet site for a one-word entry in the Address bar, if it is available.
# 
# If you disable or do not configure this policy setting, Internet Explorer does not go directly to an intranet site for a one-word entry in the Address bar.
Go to an intranet site for a one-word entry in the Address bar:
  lgpo.set:
  - name: UseIntranetSiteForOneWordEntry
  - setting: Enabled
  - policy_class: User

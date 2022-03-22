# SUPPORTED_Win7UntilThreshold
#
# 
#           If you enable this policy, a "See more results" / "Search Everywhere" link will not be shown when the user performs a search in the start menu search box.
# 
# If you disable or do not configure this policy, a "See more results" link will be shown when the user performs a search in the start menu search box.  If a 3rd party protocol handler is installed, a "Search Everywhere" link will be shown instead of the "See more results" link.
Remove See More Results / Search Everywhere link:
  lgpo.set:
  - name: NoSearchEverywhereLinkInStartMenu
  - setting: Enabled
  - policy_class: User

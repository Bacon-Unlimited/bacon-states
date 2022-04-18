# windows:SUPPORTED_Win2k
#
# Displays the filter bar above the results of an Active Directory search. The filter bar consists of buttons for applying additional filters to search results.
# 
# If you enable this setting, the filter bar appears when the Active Directory Find dialog box opens, but users can hide it.
# 
# If you disable this setting or do not configure it, the filter bar does not appear, but users can display it by selecting "Filter" on the "View" menu.
# 
# To see the filter bar, open Network Locations, click Entire Network, and then click Directory. Right-click the name of a Windows domain, and click Find. Type the name of an object in the directory, such as  "Administrator." If the filter bar does not appear above the resulting display, on the View menu, click Filter.
Enable filter in Find dialog box:
  lgpo.set:
  - name: AD_EnableFilter
  - setting: Enabled
  - policy_class: User

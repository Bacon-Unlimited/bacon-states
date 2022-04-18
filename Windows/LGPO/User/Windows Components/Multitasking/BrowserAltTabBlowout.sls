# windows:SUPPORTED_Windows_10_0_RS7
#
# This setting controls the inclusion of Edge tabs into Alt+Tab.
# 
# This can be set to show all tabs, the most recent 3 or 5 tabs, or no tabs from Edge.
# 
# If this is set to show "Open windows only", the whole feature will be disabled.
# 
Configure the inclusion of Edge tabs into Alt-Tab:
  lgpo.set:
  - name: BrowserAltTabBlowout
  - setting:
      AltTabFilterDropdown: enum-placeholder
  - policy_class: User

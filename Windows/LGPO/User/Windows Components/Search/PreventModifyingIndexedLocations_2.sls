# 4OrLater
#
# If enabled, Search and Indexing Options in Control Panel does not allow opening the Modify Locations dialog. Otherwise it can be opened. Disabled by default.
Prevent customization of indexed locations in Control Panel:
  lgpo.set:
  - name: PreventModifyingIndexedLocations_2
  - setting: Enabled
  - policy_class: User

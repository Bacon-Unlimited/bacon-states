# windows:SUPPORTED_Win2k
#
# If this policy setting is enabled, it specifies the default location criteria used when searching for printers.
# 
#           This setting is a component of the Location Tracking feature of Windows printers. To use this setting, enable Location Tracking by enabling the "Pre-populate printer search location text" setting.
# 
#           When Location Tracking is enabled, the system uses the specified location as a criterion when users search for printers. The value you type here overrides the actual location of the computer conducting the search.
# 
#           Type the location of the user's computer. When users search for printers, the system uses the specified location (and other search criteria) to find a printer nearby. You can also use this setting to direct users to a particular printer or group of printers that you want them to use.
# 
#           If you disable this setting or do not configure it, and the user does not type a location as a search criterion, the system searches for a nearby printer based on the IP address and subnet mask of the user's computer.
Computer location:
  lgpo.set:
  - name: PhysicalLocation
  - setting:
      PhysicalLocation_Name: text-placeholder
  - policy_class: Machine

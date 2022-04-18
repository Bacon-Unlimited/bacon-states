# windows:SUPPORTED_Windows_10_0
#
# 
#           Determines whether Device Control Printing Restrictions are enforced for printing on this computer.
# 
#           By default, there are no restrictions to printing based on connection type or printer Make/Model.
# 
#           If you enable this setting, the computer will restrict printing to printer connections on the corporate network or approved USB-connected printers.
# 
#           If you disable this setting or do not configure it, there are no restrictions to printing based on connection type or printer Make/Model.
Enable Device Control Printing Restrictions:
  lgpo.set:
  - name: EnableDeviceControlUser
  - setting: Enabled
  - policy_class: User

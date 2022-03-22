# SUPPORTED_NetMeeting3
#
# Disables the directory feature of NetMeeting.
# 
# Users will not logon to a directory (ILS) server when NetMeeting starts.  Users will also not be able to view or place calls via a NetMeeting directory.
# 
# This policy is for deployers who have their own location or calling schemes such as a Web site or an address book." 
Disable Directory services:
  lgpo.set:
  - name: PreventDirectoryServices
  - setting: Enabled
  - policy_class: User

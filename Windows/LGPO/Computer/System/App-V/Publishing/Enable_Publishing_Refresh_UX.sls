# windows:SUPPORTED_Windows7
#
# Enables a UX to display to the user when a publishing refresh is performed on the client.
Enable Publishing Refresh UX:
  lgpo.set:
  - name: Enable_Publishing_Refresh_UX
  - setting: Enabled
  - policy_class: Machine

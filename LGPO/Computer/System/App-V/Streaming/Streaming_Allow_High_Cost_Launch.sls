# windows:SUPPORTED_Windows7
#
# This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (e.g. 4G).
Allow First Time Application Launches if on a High Cost Windows 8 Metered Connection:
  lgpo.set:
  - name: Streaming_Allow_High_Cost_Launch
  - setting: Enabled
  - policy_class: Machine

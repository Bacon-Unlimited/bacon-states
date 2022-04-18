# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows pinning apps to Start by default, when they are included by AppID on the list.
Pin Apps to Start when installed:
  lgpo.set:
  - name: StartPinAppsWhenInstalled
  - setting:
      StartPinAppsWhenInstalled_Name:
      - placeholder1
      - placeholder2
  - policy_class: Machine

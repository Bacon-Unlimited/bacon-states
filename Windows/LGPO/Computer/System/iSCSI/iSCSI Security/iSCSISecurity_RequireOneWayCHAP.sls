# windows:SUPPORTED_WindowsVista
#
# If enabled then only those sessions that are configured for one-way CHAP may be established. If disabled then sessions that are configured for one-way CHAP or sessions not configured for one-way CHAP may be established. Note that if the "Do not allow sessions without mutual CHAP" setting is enabled then that setting overrides this one.
Do not allow sessions without one way CHAP:
  lgpo.set:
  - name: iSCSISecurity_RequireOneWayCHAP
  - setting: Enabled
  - policy_class: Machine

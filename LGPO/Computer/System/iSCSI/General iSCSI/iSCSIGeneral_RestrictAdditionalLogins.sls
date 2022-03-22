# windows:SUPPORTED_WindowsVista
#
# If enabled then only those sessions that are established via a persistent login will be established and no new persistent logins may be created. If disabled then additional persistent and non persistent logins may be established.
Do not allow additional session logins:
  lgpo.set:
  - name: iSCSIGeneral_RestrictAdditionalLogins
  - setting: Enabled
  - policy_class: Machine

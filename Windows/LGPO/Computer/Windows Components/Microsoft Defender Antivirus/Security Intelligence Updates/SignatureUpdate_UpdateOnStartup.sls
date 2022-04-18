# windows:SUPPORTED_Windows8
#
# This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur immediately after service startup.
# 
#     If you enable this setting, a check for new security intelligence will occur after service startup.
# 
#     If you disable this setting or do not configure this setting, a check for new security intelligence will not occur after service startup.
Check for the latest virus and spyware security intelligence on startup:
  lgpo.set:
  - name: SignatureUpdate_UpdateOnStartup
  - setting: Enabled
  - policy_class: Machine

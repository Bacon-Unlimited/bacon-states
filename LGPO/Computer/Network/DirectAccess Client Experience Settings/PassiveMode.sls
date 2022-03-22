# windows:SUPPORTED_Windows7
#
# Specifies whether NCA service runs in Passive Mode or not.
# 
# Set this to Disabled to keep NCA probing actively all the time. If this setting is not configured, NCA probing is in active mode by default.
# 
DirectAccess Passive Mode:
  lgpo.set:
  - name: PassiveMode
  - setting: Enabled
  - policy_class: Machine

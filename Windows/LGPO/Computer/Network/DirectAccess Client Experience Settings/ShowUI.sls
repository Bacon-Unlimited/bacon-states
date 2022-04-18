# windows:SUPPORTED_Windows7
#
# Specifies whether an entry for DirectAccess connectivity appears when the user clicks the Networking notification area icon.
# 
# Set this to Disabled to prevent user confusion when you are just using DirectAccess to remotely manage DirectAccess client computers from your intranet and not providing seamless intranet access. 
# 
# If this setting is not configured, the entry for DirectAccess connectivity appears.
# 
User Interface:
  lgpo.set:
  - name: ShowUI
  - setting: Enabled
  - policy_class: Machine

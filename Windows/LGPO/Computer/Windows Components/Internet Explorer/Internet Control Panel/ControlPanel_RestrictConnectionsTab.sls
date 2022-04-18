# SUPPORTED_IE5
#
# Removes the Connections tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, users are prevented from seeing and changing connection and proxy settings.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
# 
# When you set this policy, you do not need to set the following policies for the Content tab, because this policy removes the Connections tab from the interface:
# 
# "Disable Internet Connection Wizard"
# 
# "Disable changing connection settings"
# 
# "Prevent changing proxy settings"
# 
# "Disable changing Automatic Configuration settings"
Disable the Connections page:
  lgpo.set:
  - name: ControlPanel_RestrictConnectionsTab
  - setting: Enabled
  - policy_class: Machine

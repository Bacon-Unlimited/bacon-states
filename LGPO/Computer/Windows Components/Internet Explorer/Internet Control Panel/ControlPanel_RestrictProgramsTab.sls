# SUPPORTED_IE5
#
# Removes the Programs tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, users are prevented from seeing and changing default settings for Internet programs.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
# 
# When you set this policy, you do not need to set the following policies for the Programs tab, because this policy removes the Programs tab from the interface:
# 
# "Disable changing Messaging settings"
# 
# "Disable changing Calendar and Contact settings"
# 
# "Disable the Reset Web Settings feature"
# 
# "Disable changing default browser check"
Disable the Programs page:
  lgpo.set:
  - name: ControlPanel_RestrictProgramsTab
  - setting: Enabled
  - policy_class: Machine

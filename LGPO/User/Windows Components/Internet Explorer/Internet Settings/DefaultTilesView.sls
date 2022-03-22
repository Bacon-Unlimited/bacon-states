# SUPPORTED_IE10WIN8
#
# This policy setting configures Internet Explorer to open Internet Explorer tiles on the desktop.
# 
# If you enable this policy setting, Internet Explorer opens tiles only on the desktop.
# 
# If you disable this policy setting, Internet Explorer does not open tiles on the desktop.
# 
# If you do not configure this policy, users can choose how Internet Explorer tiles are opened.
Open Internet Explorer tiles on the desktop:
  lgpo.set:
  - name: DefaultTilesView
  - setting: Enabled
  - policy_class: User

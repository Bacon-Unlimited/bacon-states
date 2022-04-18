# TS_SUPPORTED_Win2k3_Sp1
#
# This policy setting determines whether notifications are displayed on an RD Session Host server when there are problems with RD Licensing that affect the RD Session Host server.
# 
# By default, notifications are displayed on an RD Session Host server after you log on as a local administrator, if there are problems with RD Licensing that affect the RD Session Host server. If applicable, a notification will also be displayed that notes the number of days until the licensing grace period for the RD Session Host server will expire.
# 
# If you enable this policy setting, these notifications will not be displayed on the RD Session Host server.
# 
# If you disable or do not configure this policy setting, these notifications will be displayed on the RD Session Host server after you log on as a local administrator.
Hide notifications about RD Licensing problems that affect the RD Session Host server:
  lgpo.set:
  - name: TS_LICENSE_TOOLTIP
  - setting: Enabled
  - policy_class: Machine

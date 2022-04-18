# SUPPORTED_IE11WIN10_1607
#
# This policy setting lets you decide whether employees see an additional page in Internet Explorer 11, stating that a site has been opened using Microsoft Edge with Enterprise Mode.
# 
# If you enable this setting, employees see an additional page in Internet Explorer 11, stating that a site has been opened using Microsoft Edge with Enterprise Mode.
# 
# If you disable or don't configure this setting, the default app behavior occurs and no additional page appears.
Show message when opening sites in Microsoft Edge using Enterprise Mode:
  lgpo.set:
  - name: ShowMessageWhenOpeningSitesInMicrosoftEdge
  - setting: Enabled
  - policy_class: User

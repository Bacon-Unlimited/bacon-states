# RedistOnly
#
# Enabling this policy allows you to set the location of the preview pane in the Desktop Search results. You can also turn off the preview pane. The four options are:
# 
# - Auto
# - Right
# - Bottom
# - Off
# 
# You should consider enabling this policy to turn off the preview pane if your environment does not support Office XP or later. The full preview pane functionality is only available for Office documents in Office XP or later.
# 
# When this policy is disabled or not configured, the preview pane shows automatically to the right of the Desktop Search results, and your users can choose the location of the preview pane
Preview pane location:
  lgpo.set:
  - name: PreviewPaneLocation
  - setting:
      PreviewPaneLocation: enum-placeholder
  - policy_class: Machine

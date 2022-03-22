# windows:SUPPORTED_WindowsXPOrServerOnly
#
# Hides pop-up text on the Start menu and in the notification area.
# 
# When you hold the cursor over an item on the Start menu or in the notification area, the system displays pop-up text providing additional information about the object.
# 
# If you enable this setting, some of this pop-up text is not displayed. The pop-up text affected by this setting includes "Click here to begin" on the Start button, "Where have all my programs gone" on the Start menu, and "Where have my icons gone" in the notification area.
# 
# If you disable this setting or do not configure it, all pop-up text is displayed on the Start menu and in the notification area.
Remove Balloon Tips on Start Menu items:
  lgpo.set:
  - name: NoBalloonTip
  - setting: Enabled
  - policy_class: User

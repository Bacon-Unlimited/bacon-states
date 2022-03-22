# SUPPORTED_IE5
#
# Prevents users from determining which buttons appear on the Microsoft Internet Explorer and File Explorer standard toolbars. The buttons appearing on the toolbar can be customized by the "Customize" option. This is present under the Toolbars submenu of the View menu in Internet Explorer 6 and under the Toolbars submenu of the Tools menu in the Command bar in subsequent versions of Internet Explorer.
# 
# If you enable this policy, the Customize option will be removed from the menu.
# 
# If you disable this policy or do not configure it, users can customize which buttons appear on the Internet Explorer and File Explorer toolbars.
# 
# This policy can be used in coordination with the "Disable customizing browser toolbars" policy, which prevents users from determining which toolbars are displayed in Internet Explorer and File Explorer.
Disable customizing browser toolbar buttons:
  lgpo.set:
  - name: NoToolbarCustomize
  - setting: Enabled
  - policy_class: User

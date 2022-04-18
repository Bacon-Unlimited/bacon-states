# SUPPORTED_IE5
#
# Prevents users from determining which toolbars are displayed in Microsoft Internet Explorer and File Explorer.
# 
# If you enable this policy, the list of toolbars, which users can display by clicking the View menu and then pointing to the Toolbars command, will appear dimmed.
# 
# If you disable this policy or do not configure it, users can determine which toolbars are displayed in File Explorer and Internet Explorer.
# 
# This policy can be used in coordination with the "Disable customizing browser toolbar buttons" policy, which prevents users from adding or removing toolbars from Internet Explorer.
Disable customizing browser toolbars:
  lgpo.set:
  - name: NoBandCustomize
  - setting: Enabled
  - policy_class: User

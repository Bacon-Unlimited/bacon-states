# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether unwanted pop-up windows appear. Pop-up windows that are opened when the end user clicks a link are not blocked.
# 
# If you enable this policy setting, most unwanted pop-up windows are prevented from appearing.
# 
# If you disable this policy setting, pop-up windows are not prevented from appearing.
# 
# If you do not configure this policy setting, most unwanted pop-up windows are prevented from appearing.
Use Pop-up Blocker:
  lgpo.set:
  - name: IZ_PolicyBlockPopupWindows_1
  - setting:
      IZ_Partname1809: enum-placeholder
  - policy_class: User

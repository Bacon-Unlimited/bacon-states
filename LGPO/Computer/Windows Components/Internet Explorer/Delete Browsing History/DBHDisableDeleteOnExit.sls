# SUPPORTED_IE8
#
# This policy setting allows the automatic deletion of specified items when the last browser window closes. The preferences selected in the Delete Browsing History dialog box (such as deleting temporary Internet files, cookies, history, form data, and passwords) are applied, and those items are deleted.
# 
# If you enable this policy setting, deleting browsing history on exit is turned on.
# 
# If you disable this policy setting, deleting browsing history on exit is turned off.
# 
# If you do not configure this policy setting, it can be configured on the General tab in Internet Options.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting has no effect.
Allow deleting browsing history on exit:
  lgpo.set:
  - name: DBHDisableDeleteOnExit
  - setting: Enabled
  - policy_class: Machine

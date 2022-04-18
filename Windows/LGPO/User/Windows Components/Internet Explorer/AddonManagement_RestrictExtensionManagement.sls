# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users have the ability to allow or deny add-ons through Add-On Manager.
# 
# If you enable this policy setting, users cannot enable or disable add-ons through Add-On Manager.
# 
# If you disable or do not configure this policy setting, the appropriate controls in the Add-On Manager will be available to the user.
Do not allow users to enable or disable add-ons:
  lgpo.set:
  - name: AddonManagement_RestrictExtensionManagement
  - setting: Enabled
  - policy_class: User

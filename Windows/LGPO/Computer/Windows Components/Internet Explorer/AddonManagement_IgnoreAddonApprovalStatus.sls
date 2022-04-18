# SUPPORTED_IE9
#
# This policy setting allows you to configure whether newly installed add-ons are automatically activated in the Internet Explorer 9 browser. Any add-ons that were activated in a previous version of Internet Explorer are considered to be the same as newly installed add-ons and are not activated when the user upgrades to Internet Explorer 9.
# 
# In Internet Explorer 9, add-ons are defined as toolbars, Browser Helper Objects, or Explorer bars. ActiveX controls are referred to as plug-ins and are not part of this definition.
# 
# If you enable this policy setting, newly installed add-ons are automatically activated in the browser.
# 
# If you disable or do not configure this policy setting, newly installed add-ons are not automatically activated in the browser. Internet Explorer notifies the user when newly installed add-ons are ready for use. The user must choose to activate them by responding to the notification, using Manage Add-ons, or using other methods.
Automatically activate newly installed add-ons:
  lgpo.set:
  - name: AddonManagement_IgnoreAddonApprovalStatus
  - setting: Enabled
  - policy_class: Machine

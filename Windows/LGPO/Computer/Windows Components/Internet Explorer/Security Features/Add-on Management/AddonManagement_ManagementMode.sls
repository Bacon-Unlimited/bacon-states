# SUPPORTED_IE6SP2
#
# This policy setting allows you to ensure that any Internet Explorer add-ons not listed in the 'Add-on List' policy setting are denied. Add-ons in this case are controls like ActiveX Controls, Toolbars, and Browser Helper Objects (BHOs) which are specifically written to extend or enhance the functionality of the browser or web pages.
# 
# By default, the 'Add-on List' policy setting defines a list of add-ons to be allowed or denied through Group Policy. However, users can still use the Add-on Manager within Internet Explorer to manage add-ons not listed within the 'Add-on List' policy setting. This policy setting effectively removes this option from users - all add-ons are assumed to be denied unless they are specifically allowed through the 'Add-on List' policy setting.
# 
# If you enable this policy setting, Internet Explorer only allows add-ons that are specifically listed (and allowed) through the 'Add-on List' policy setting.
# 
# If you disable or do not configure this policy setting, users may use Add-on Manager to allow or deny any add-ons that are not included in the 'Add-on List' policy setting.
# 
# Note: If an add-on is listed in the 'Add-on List' policy setting, the user cannot change its state through Add-on Manager (unless its value has been set to allow user management - see the 'Add-on List' policy for more details).
Deny all add-ons unless specifically allowed in the Add-on List:
  lgpo.set:
  - name: AddonManagement_ManagementMode
  - setting: Enabled
  - policy_class: Machine

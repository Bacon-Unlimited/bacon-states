# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage a list of add-ons to be allowed or denied by Internet Explorer. Add-ons in this case are controls like ActiveX Controls, Toolbars, and Browser Helper Objects (BHOs) which are specifically written to extend or enhance the functionality of the browser or web pages.
# 
# This list can be used with the 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting, which defines whether add-ons not listed here are assumed to be denied.
# 
# If you enable this policy setting, you can enter a list of add-ons to be allowed or denied by Internet Explorer. For each entry that you add to the list, enter the following information:
# 
# Name of the Value - the CLSID (class identifier) for the add-on you wish to add to the list.  The CLSID should be in brackets for example, {000000000-0000-0000-0000-0000000000000}'. The CLSID for an add-on can be obtained by reading the OBJECT tag from a Web page on which the add-on is referenced.
# 
# Value - A number indicating whether Internet Explorer should deny or allow the add-on to be loaded. To specify that an add-on should be denied enter a 0 (zero) into this field. To specify that an add-on should be allowed, enter a 1 (one) into this field. To specify that an add-on should be allowed and also permit the user to manage the add-on through Add-on Manager, enter a 2 (two) into this field.
# 
# If you disable this policy setting, the list is deleted. The 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting will still determine whether add-ons not in this list are assumed to be denied.
Add-on List:
  lgpo.set:
  - name: AddonManagement_AddOnList
  - setting:
      AddOnList:
      - placeholder1
      - placeholder2
  - policy_class: Machine

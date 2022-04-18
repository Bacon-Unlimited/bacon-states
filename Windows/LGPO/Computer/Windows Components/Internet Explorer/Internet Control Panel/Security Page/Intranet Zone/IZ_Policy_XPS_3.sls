# SUPPORTED_IE7
#
# This policy setting allows you to manage the loading of XPS files. These files contain a fixed-layout representation of paginated content and are portable across platforms, devices, and applications.
# 
# If you enable this policy setting and set the drop-down box to Enable, XPS files are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XPS files.
# 
# If you disable this policy setting, XPS files are not loaded inside Internet Explorer. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to load XPS files inside Internet Explorer.
Allow loading of XPS files:
  lgpo.set:
  - name: IZ_Policy_XPS_3
  - setting:
      IZ_Partname2401: enum-placeholder
  - policy_class: Machine

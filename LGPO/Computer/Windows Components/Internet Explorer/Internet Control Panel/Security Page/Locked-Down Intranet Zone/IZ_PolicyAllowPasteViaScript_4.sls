# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether scripts can perform a clipboard operation (for example, cut, copy, and paste) in a specified region.
# 
# If you enable this policy setting, a script can perform a clipboard operation.
# 
# If you select Prompt in the drop-down box, users are queried as to whether to perform clipboard operations.
# 
# If you disable this policy setting, a script cannot perform a clipboard operation.
# 
# If you do not configure this policy setting, a script can perform a clipboard operation.
Allow cut, copy or paste operations from the clipboard via script:
  lgpo.set:
  - name: IZ_PolicyAllowPasteViaScript_4
  - setting:
      IZ_Partname1407: enum-placeholder
  - policy_class: Machine

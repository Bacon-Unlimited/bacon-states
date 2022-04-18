# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether data on HTML forms on pages in the zone may be submitted. Forms sent with SSL (Secure Sockets Layer) encryption are always allowed; this setting only affects non-SSL form data submission.
# 
# If you enable this policy setting, information using HTML forms on pages in this zone can be submitted automatically. If you select Prompt in the drop-down box, users are queried to choose whether to allow information using HTML forms on pages in this zone to be submitted.
# 
# If you disable this policy setting, information using HTML forms on pages in this zone is prevented from being submitted.
# 
# If you do not configure this policy setting, information using HTML forms on pages in this zone can be submitted automatically.
Submit non-encrypted form data:
  lgpo.set:
  - name: IZ_PolicySubmitNonencryptedFormData_10
  - setting:
      IZ_Partname1601: enum-placeholder
  - policy_class: Machine

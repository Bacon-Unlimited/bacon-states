# windows:SUPPORTED_Windows7
#
# This policy setting specifies the text of the Contact IT URL hyperlink in the Company Settings Center.
# If you enable this policy setting, the Company Settings Center displays the specified text in the link to the Contact IT URL.
# If you disable this policy setting, the Company Settings Center does not display an IT Contact link.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Contact IT Link Text:
  lgpo.set:
  - name: ContactITDescription
  - setting:
      ContactITDescription: text-placeholder
  - policy_class: Machine

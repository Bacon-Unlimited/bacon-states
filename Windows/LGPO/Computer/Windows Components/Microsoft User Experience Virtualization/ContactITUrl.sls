# windows:SUPPORTED_Windows7
#
# This policy setting specifies the URL for the Contact IT link in the Company Settings Center.
# If you enable this policy setting, the Company Settings Center Contact IT text links to the specified URL. The link can be of any standard protocol such as http or mailto. 
# If you disable this policy setting, the Company Settings Center does not display an IT Contact link.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Contact IT URL:
  lgpo.set:
  - name: ContactITUrl
  - setting:
      ContactITURL: text-placeholder
  - policy_class: Machine

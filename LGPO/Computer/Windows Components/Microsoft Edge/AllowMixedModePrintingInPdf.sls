# SUPPORTED_INTERNET_BROWSER_RS5
#
# With this policy, you can print PDF files based on per page orientation in Microsoft Edge.
# 
# If enabled, mixed mode printing is allowed.
# 
# If disabled, mixed mode printing is not allowed.
For PDF files that have both landscape and portrait pages, print each in its own orientation.:
  lgpo.set:
  - name: AllowMixedModePrintingInPdf
  - setting: Enabled
  - policy_class: Machine

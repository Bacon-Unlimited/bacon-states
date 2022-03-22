# windows:SUPPORTED_Windows7
#
# The program collects information about computer hardware and how you use Microsoft Application Virtualization without interrupting you. This helps Microsoft identify which Microsoft Application Virtualization features to improve. No information collected is used to identify or contact you. 
# 
# For more details, read about the program online at http://go.microsoft.com/fwlink/?LinkID=184686.
Microsoft Customer Experience Improvement Program (CEIP):
  lgpo.set:
  - name: CEIP_Enable
  - setting: Enabled
  - policy_class: Machine

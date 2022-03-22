# SUPPORTED_IE5
#
# This policy setting allows you to manage whether users can access the Print menu. Starting with Windows 8, this policy setting also allows you to manage whether users can access the Print flyout for Internet Explorer and any printers under the Devices charm.
# 
# If you enable this policy setting, the Print menu in Internet Explorer will not be available. Starting with Windows 8, the Print flyout for Internet Explorer will not be available, and users will not see printers under the Devices charm.
# 
# If you disable or do not configure this policy setting, the Print menu in Internet Explorer will be available. Starting with Windows 8, the Print flyout for Internet Explorer will be available, and users will see installed printers under the Devices charm.
Turn off Print Menu:
  lgpo.set:
  - name: NoPrinting
  - setting: Enabled
  - policy_class: Machine

# SUPPORTED_IE7_8
#
# This policy setting prevents the Search box from appearing in Internet Explorer. When the Search box is available, it includes all installed search providers and a link to search settings.
# 
# If you enable this policy setting, the Search box does not appear in the Internet Explorer frame.
# 
# If you disable or do not configure this policy setting, the Search box appears by default in the Internet Explorer frame.
# 
# Note: If you enable this policy setting, Internet Explorer does not enumerate search providers for the Accelerators infrastructure. If Accelerators are turned on, users can install search providers as Accelerators to include them on the Accelerator menu.
Prevent Internet Explorer Search box from appearing:
  lgpo.set:
  - name: NoIESearchBox
  - setting: Enabled
  - policy_class: Machine

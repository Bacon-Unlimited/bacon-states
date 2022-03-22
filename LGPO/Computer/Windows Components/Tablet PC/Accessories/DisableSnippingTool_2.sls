# windows:SUPPORTED_WindowsVista
#
# Prevents the snipping tool from running.
# 
# If you enable this policy setting, the Snipping Tool will not run.
# 
# If you disable this policy setting, the Snipping Tool will run.
# 
# If you do not configure this policy setting, the Snipping Tool will run.
Do not allow Snipping Tool to run:
  lgpo.set:
  - name: DisableSnippingTool_2
  - setting: Enabled
  - policy_class: Machine

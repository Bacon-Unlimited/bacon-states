# SUPPORTED_IE11
#
# This policy setting allows you to manage whether VBScript can be run on pages from the specified zone in Internet Explorer.
# 
# If you selected Enable in the drop-down box, VBScript can run without user intervention.
# 
# If you selected Prompt in the drop-down box, users are asked to choose whether to allow VBScript to run.
# 
# If you selected Disable in the drop-down box, VBScript is prevented from running.
# 
# If you do not configure or disable this policy setting, VBScript is prevented from running.
Allow VBScript to run in Internet Explorer:
  lgpo.set:
  - name: IZ_PolicyAllowVBScript_1
  - setting:
      IZ_Partname140C: enum-placeholder
  - policy_class: Machine

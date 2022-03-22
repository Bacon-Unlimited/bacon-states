# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether script code on pages in the zone is run.
# 
# If you enable this policy setting, script code on pages in the zone can run automatically. If you select Prompt in the drop-down box, users are queried to choose whether to allow script code on pages in the zone to run.
# 
# If you disable this policy setting, script code on pages in the zone is prevented from running.
# 
# If you do not configure this policy setting, script code on pages in the zone can run automatically.
Allow active scripting:
  lgpo.set:
  - name: IZ_PolicyActiveScripting_5
  - setting:
      IZ_Partname1400: enum-placeholder
  - policy_class: Machine

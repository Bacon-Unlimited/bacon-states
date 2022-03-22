# windows:SUPPORTED_Windows8
#
# 
#           This policy setting controls whether the LPRemove task will run to clean up language packs installed on a machine but are not used by any users on that machine.
# 
#           If you enable this policy setting, language packs that are installed as part of the system image will remain installed even if they are not used by any user on that system.
# 
#           If you disable or do not configure this policy setting, language packs that are installed as part of the system image but are not used by any user on that system will be removed as part of a scheduled clean up task.
#       
Block clean-up of unused language packs:
  lgpo.set:
  - name: BlockCleanupOfUnusedPreinstalledLangPacks
  - setting: Enabled
  - policy_class: Machine

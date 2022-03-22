# windows:SUPPORTED_WindowsVista
#
# This policy setting will enable tagging of Windows Customer Experience Improvement data when a study is being conducted.
# 
# If you enable this setting then Windows CEIP data uploaded will be tagged.
# 
# If you do not configure this setting or disable it, then CEIP data will not be tagged with the Study Identifier. 
# 
Tag Windows Customer Experience Improvement data with Study Identifier:
  lgpo.set:
  - name: StudyId
  - setting:
      StudyIdVal: decimal-placeholder
  - policy_class: Machine

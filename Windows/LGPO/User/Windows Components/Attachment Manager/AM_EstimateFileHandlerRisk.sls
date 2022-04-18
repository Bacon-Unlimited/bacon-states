# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the logic that Windows uses to determine the risk for file attachments.
# 
# Preferring the file handler instructs Windows to use the file handler data over the file type data. For example, trust notepad.exe, but don't trust .txt files.
# 
# Preferring the file type instructs Windows to use the file type data over the file handler data. For example, trust .txt files, regardless of the file handler.
# 
# Using both the file handler and type data is the most restrictive option. Windows chooses the more restrictive recommendation which will cause users to see more trust prompts than choosing the other options.
# 
# If you enable this policy setting, you can choose the order in which Windows processes risk assessment data.
# 
# If you disable this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.
# 
# If you do not configure this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.
Trust logic for file attachments:
  lgpo.set:
  - name: AM_EstimateFileHandlerRisk
  - setting:
      AM_TrustLogicSetting: enum-placeholder
  - policy_class: User

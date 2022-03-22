# windows:SUPPORTED_WindowsVista
#
# Prevents printing to Journal Note Writer.
# 
# If you enable this policy, the Journal Note Writer printer driver will not allow printing to it. It will remain displayed in the list of available printers, but attempts to print to it will fail.
# 
# If you disable this policy, you will be able to use this feature to print to a Journal Note.
# 
# If you do not configure this policy, users will be able to use this feature to print to a Journal Note.
Do not allow printing to Journal Note Writer:
  lgpo.set:
  - name: DisableNoteWriterPrinting_1
  - setting: Enabled
  - policy_class: User

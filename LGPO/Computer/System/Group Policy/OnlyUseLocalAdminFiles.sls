# windows:SUPPORTED_WindowsXPOrServerOnly
#
# This policy setting lets you always use local ADM files for the Group Policy snap-in.
# 
# By default, when you edit a Group Policy Object (GPO) using the Group Policy Object Editor snap-in, the ADM files are loaded from that GPO into the Group Policy Object Editor snap-in. This allows you to use the same version of the ADM files that were used to create the GPO while editing this GPO.
# 
# This leads to the following behavior:
# 
# -  If you originally created the GPO with, for example, an English system, the GPO contains English ADM files.
# 
# -  If you later edit the GPO from a different-language system, you get the English ADM files as they were in the GPO.
# 
# You can change this behavior by using this setting.
# 
# If you enable this setting, the Group Policy Object Editor snap-in always uses local ADM files in your %windir%\inf directory when editing GPOs.
# 
# This leads to the following behavior:
# 
# -  If you had originally created the GPO with an English system, and then you edit the GPO with a Japanese system, the Group Policy Object Editor snap-in uses the local Japanese ADM files, and you see the text in Japanese under Administrative Templates.
# 
# If you disable or do not configure this setting, the Group Policy Object Editor snap-in always loads all ADM files from the actual GPO.
# 
# Note: If the ADMs that you require are not all available locally in your %windir%\inf directory, you might not be able to see all the settings that have been configured in the GPO that you are editing.
Always use local ADM files for Group Policy Object Editor:
  lgpo.set:
  - name: OnlyUseLocalAdminFiles
  - setting: Enabled
  - policy_class: Machine

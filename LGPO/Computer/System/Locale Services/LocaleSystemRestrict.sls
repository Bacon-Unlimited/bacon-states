# windows:SUPPORTED_WindowsVista
#
# This policy setting restricts the permitted system locales to the specified list. If the list is empty, it locks the system locale to its current value. This policy setting does not change the existing system locale; however, the next time that an administrator attempts to change the computer's system locale, they will be restricted to the specified list.
# 
# The locale list is specified using language names, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-US;en-CA" would restrict the system locale to English (United States) and English (Canada).
# 
# If you enable this policy setting, administrators can select a system locale only from the specified system locale list.
# 
# If you disable or do not configure this policy setting, administrators can select any system locale shipped with the operating system.
Restrict system locales:
  lgpo.set:
  - name: LocaleSystemRestrict
  - setting:
      AllowableSystemLocaleTagList: text-placeholder
  - policy_class: Machine

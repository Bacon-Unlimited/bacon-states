# windows:SUPPORTED_Windows_10_0_RS2
#
# By default, the calendar is set according to the locale of the operating system, and users can show an additional calendar. For zh-CN and zh-SG locales, an additional calendar shows the lunar month and date and holiday names in Simplified Chinese (Lunar) by default. For zh-TW, zh-HK, and zh-MO locales, an additional calendar shows the lunar month and date and holiday names in Traditional Chinese (Lunar) by default.
# 
# If you enable this policy setting, users can show an additional calendar in either Simplified Chinese (Lunar) or Traditional Chinese (Lunar), regardless of the locale.
# 
# If you disable this policy setting, users cannot show an additional calendar, regardless of the locale.
# 
# If you do not configure this policy setting, the calendar will be set according to the default logic.
Show additional calendar:
  lgpo.set:
  - name: ConfigureTaskbarCalendar
  - setting:
      ConfigureTaskbarCalendar_Dropdown: enum-placeholder
  - policy_class: User

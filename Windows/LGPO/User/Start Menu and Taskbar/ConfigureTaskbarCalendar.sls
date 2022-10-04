####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Start Menu and Taskbar\ConfigureTaskbarCalendar.sls
#
# SUPPORTED WINDOWS OS
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

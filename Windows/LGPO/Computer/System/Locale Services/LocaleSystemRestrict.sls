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
# LOCATION: \Computer\System\Locale Services\LocaleSystemRestrict.sls
#
# SUPPORTED WINDOWS OS
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

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
# LOCATION: \Computer\Printers\ApplicationDriverIsolation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Determines if print driver components are isolated from applications instead of normally loading them into applications. Isolating print drivers greatly reduces the risk of a print driver failure causing an application crash.
# 
# Not all applications support driver isolation. By default, Microsoft Excel 2007, Excel 2010, Word 2007, Word 2010 and certain other applications are configured to support it. Other applications may also be capable of isolating print drivers, depending on whether they are configured for it.
# 
# If you enable or do not configure this policy setting, then applications that are configured to support driver isolation will be isolated.
# 
# If you disable this policy setting, then print drivers will be loaded within all associated application processes.
# 
# Notes:
# -This policy setting applies only to applications opted into isolation.
# -This policy setting applies only to print drivers loaded by applications. Print drivers loaded by the print spooler are not affected.
# -This policy setting is only checked once during the lifetime of a process. After changing the policy, a running application must be relaunched before settings take effect.
Isolate print drivers from applications:
  lgpo.set:
  - name: ApplicationDriverIsolation
  - setting: Enabled
  - policy_class: Machine

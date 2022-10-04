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
# LOCATION: \Computer\Printers\PrintDriverIsolationExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting determines whether the print spooler will execute print drivers in an isolated or separate process. When print drivers are loaded in an isolated process (or isolated processes), a print driver failure will not cause the print spooler service to fail.
# 
# If you enable or do not configure this policy setting, the print spooler will execute print drivers in an isolated process by default.
# 
# If you disable this policy setting, the print spooler will execute print drivers in the print spooler process.
# 
# 
# Notes:
# -Other system or driver policy settings may alter the process in which a print driver is executed.
# -This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications are not affected.
# -This policy setting takes effect without restarting the print spooler service.
Execute print drivers in isolated processes:
  lgpo.set:
  - name: PrintDriverIsolationExecutionPolicy
  - setting: Enabled
  - policy_class: Machine

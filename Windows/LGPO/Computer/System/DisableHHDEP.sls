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
# LOCATION: \Computer\System\DisableHHDEP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to exclude HTML Help Executable from being monitored by software-enforced Data Execution Prevention.
# 
#           Data Execution Prevention (DEP) is designed to block malicious code that takes advantage of exception-handling mechanisms in Windows by monitoring your programs to make sure that they use system memory safely.
# 
#           If you enable this policy setting, DEP for HTML Help Executable is turned off. This will allow certain legacy ActiveX controls to function without DEP shutting down HTML Help Executable.
# 
#           If you disable or do not configure this policy setting, DEP is turned on for HTML Help Executable. This provides an additional security benefit, but HTLM Help stops if DEP detects system memory abnormalities.
#         
Turn off Data Execution Prevention for HTML Help Executible:
  lgpo.set:
  - name: DisableHHDEP
  - setting: Enabled
  - policy_class: Machine

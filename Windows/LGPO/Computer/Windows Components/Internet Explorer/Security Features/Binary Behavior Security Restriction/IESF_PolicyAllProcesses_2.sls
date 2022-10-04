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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\Binary Behavior Security Restriction\IESF_PolicyAllProcesses_2.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# Internet Explorer contains dynamic binary behaviors: components that encapsulate specific functionality for the HTML elements to which they are attached. This policy setting controls whether the Binary Behavior Security Restriction setting is prevented or allowed.
# 
# If you enable this policy setting, binary behaviors are prevented for all processes. Any use of binary behaviors for HTML rendering is blocked.
# 
# If you disable or do not configure this policy setting, binary behaviors are allowed for all processes.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_2
  - setting: Enabled
  - policy_class: Machine

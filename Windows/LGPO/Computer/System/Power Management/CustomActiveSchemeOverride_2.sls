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
# LOCATION: \Computer\System\Power Management\CustomActiveSchemeOverride_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the active power plan from a specified power plans GUID. The GUID for a custom power plan GUID can be retrieved by using powercfg, the power configuration command line tool.  
# 
# If you enable this policy setting, you must specify a power plan, specified as a GUID using the following format: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX (For example, 103eea6e-9fcd-4544-a713-c282d8e50083), indicating the power plan to be active.
# 
# If you disable or do not configure this policy setting, users can see and change this setting.
Specify a custom active power plan:
  lgpo.set:
  - name: CustomActiveSchemeOverride_2
  - setting:
      CustomActiveSchemeOverrideEnter: text-placeholder
  - policy_class: Machine

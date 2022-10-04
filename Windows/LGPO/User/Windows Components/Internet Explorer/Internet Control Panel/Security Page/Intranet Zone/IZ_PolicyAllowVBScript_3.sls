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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_PolicyAllowVBScript_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting allows you to manage whether VBScript can be run on pages from the specified zone in Internet Explorer.
# 
# If you selected Enable in the drop-down box, VBScript can run without user intervention.
# 
# If you selected Prompt in the drop-down box, users are asked to choose whether to allow VBScript to run.
# 
# If you selected Disable in the drop-down box, VBScript is prevented from running.
# 
# If you do not configure or disable this policy setting, VBScript will run without user intervention.
Allow VBScript to run in Internet Explorer:
  lgpo.set:
  - name: IZ_PolicyAllowVBScript_3
  - setting:
      IZ_Partname140C: enum-placeholder
  - policy_class: User

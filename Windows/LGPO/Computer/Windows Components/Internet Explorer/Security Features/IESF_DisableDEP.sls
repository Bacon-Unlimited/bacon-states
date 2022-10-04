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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\IESF_DisableDEP.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to turn off the Data Execution Prevention feature for Internet Explorer on Windows Server 2008, Windows Vista with SP1, and Windows XP with SP3.
# 
# If you enable this policy setting, Internet Explorer does not turn on Data Execution Prevention on platforms that support the SetProcessDEPPolicy function.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the SetProcessDEPPolicy function to turn on Data Execution Prevention on platforms that support the function.
# 
# This policy setting has no effect if Windows has been configured to enable Data Execution Prevention.
Turn off Data Execution Prevention:
  lgpo.set:
  - name: IESF_DisableDEP
  - setting: Enabled
  - policy_class: Machine

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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Internet Zone\IZ_PolicyScriptingOfJavaApplets_1.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether applets are exposed to scripts within the zone.
# 
# If you enable this policy setting, scripts can access applets automatically without user intervention.
# 
# If you select Prompt in the drop-down box, users are queried to choose whether to allow scripts to access applets.
# 
# If you disable this policy setting, scripts are prevented from accessing applets.
# 
# If you do not configure this policy setting, scripts can access applets automatically without user intervention.
Scripting of Java applets:
  lgpo.set:
  - name: IZ_PolicyScriptingOfJavaApplets_1
  - setting:
      IZ_Partname1402: enum-placeholder
  - policy_class: Machine

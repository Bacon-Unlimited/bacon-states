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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\IZ_PolicyActiveScripting_9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether script code on pages in the zone is run.
# 
# If you enable this policy setting, script code on pages in the zone can run automatically. If you select Prompt in the drop-down box, users are queried to choose whether to allow script code on pages in the zone to run.
# 
# If you disable this policy setting, script code on pages in the zone is prevented from running.
# 
# If you do not configure this policy setting, script code on pages in the zone can run automatically.
Allow active scripting:
  lgpo.set:
  - name: IZ_PolicyActiveScripting_9
  - setting:
      IZ_Partname1400: enum-placeholder
  - policy_class: User

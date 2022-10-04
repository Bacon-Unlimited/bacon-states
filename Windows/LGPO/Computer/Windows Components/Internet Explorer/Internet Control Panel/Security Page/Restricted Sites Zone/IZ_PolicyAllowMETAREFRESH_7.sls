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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Restricted Sites Zone\IZ_PolicyAllowMETAREFRESH_7.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether a user's browser can be redirected to another Web page if the author of the Web page uses the Meta Refresh setting (tag) to redirect browsers to another Web page.
# 
# If you enable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can be redirected to another Web page.
# 
# If you disable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting cannot be redirected to another Web page.
# 
# If you do not configure this policy setting, a user's browser that loads a page containing an active Meta Refresh setting cannot be redirected to another Web page.
Allow META REFRESH:
  lgpo.set:
  - name: IZ_PolicyAllowMETAREFRESH_7
  - setting:
      IZ_Partname1608: enum-placeholder
  - policy_class: Machine

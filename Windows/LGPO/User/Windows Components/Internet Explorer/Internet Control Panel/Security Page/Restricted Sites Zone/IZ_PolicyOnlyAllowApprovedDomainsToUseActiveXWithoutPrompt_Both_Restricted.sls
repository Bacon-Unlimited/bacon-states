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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Restricted Sites Zone\IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_Restricted.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting controls whether or not the user is prompted to allow ActiveX controls to run on websites other than the website that installed the ActiveX control.
# 
# If you enable this policy setting, the user is prompted before ActiveX controls can run from websites in this zone. The user can choose to allow the control to run from the current site or from all sites.
# 
# If you disable this policy setting, the user does not see the per-site ActiveX prompt, and ActiveX controls can run from all sites in this zone.
Allow only approved domains to use ActiveX controls without prompt:
  lgpo.set:
  - name: IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_Restricted
  - setting:
      IZ_Partname120b: enum-placeholder
  - policy_class: User

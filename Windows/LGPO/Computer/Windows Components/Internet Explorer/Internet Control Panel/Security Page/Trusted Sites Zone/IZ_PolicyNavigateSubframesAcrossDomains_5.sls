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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\IZ_PolicyNavigateSubframesAcrossDomains_5.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.
# 
# If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.
# 
# If you disable this policy setting, users cannot open windows and frames to access applications from different domains.
# 
# If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.
Navigate windows and frames across different domains:
  lgpo.set:
  - name: IZ_PolicyNavigateSubframesAcrossDomains_5
  - setting:
      IZ_Partname1607: enum-placeholder
  - policy_class: Machine

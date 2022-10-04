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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_PolicyFontDownload_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether pages of the zone may download HTML fonts.
# 
# If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.
# 
# If you disable this policy setting, HTML fonts are prevented from downloading.
# 
# If you do not configure this policy setting, HTML fonts can be downloaded automatically.
Allow font downloads:
  lgpo.set:
  - name: IZ_PolicyFontDownload_3
  - setting:
      IZ_Partname1604: enum-placeholder
  - policy_class: Machine

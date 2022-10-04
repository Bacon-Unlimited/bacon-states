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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\IZ_PolicyDropOrPasteFiles_5.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users can drag files or copy and paste files from a source within the zone.
# 
# If you enable this policy setting, users can drag files or copy and paste files from this zone automatically. If you select Prompt in the drop-down box, users are queried to choose whether to drag or copy files from this zone.
# 
# If you disable this policy setting, users are prevented from dragging files or copying and pasting files from this zone.
# 
# If you do not configure this policy setting, users can drag files or copy and paste files from this zone automatically.
Allow drag and drop or copy and paste files:
  lgpo.set:
  - name: IZ_PolicyDropOrPasteFiles_5
  - setting:
      IZ_Partname1802: enum-placeholder
  - policy_class: Machine

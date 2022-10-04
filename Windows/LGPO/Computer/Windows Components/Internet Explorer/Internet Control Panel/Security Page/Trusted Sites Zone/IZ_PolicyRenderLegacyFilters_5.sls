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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\IZ_PolicyRenderLegacyFilters_5.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting specifies whether Internet Explorer renders legacy visual filters in this zone.
# 
# If you enable this policy setting, you can control whether or not Internet Explorer renders legacy filters by selecting Enable, or Disable, under Options in Group Policy Editor.
# 
# If you disable, or do not configure this policy setting, users can choose whether or not to render filters in this zone. Users can change this setting on the Security tab of the Internet Options dialog box. Filters are rendered by default in this zone.
Render legacy filters:
  lgpo.set:
  - name: IZ_PolicyRenderLegacyFilters_5
  - setting:
      IZ_Partname270B: enum-placeholder
  - policy_class: Machine

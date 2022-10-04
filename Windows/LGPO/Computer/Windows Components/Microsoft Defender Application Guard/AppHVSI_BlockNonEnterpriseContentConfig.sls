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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_BlockNonEnterpriseContentConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide whether websites can load non-enterprise content in Microsoft Edge and Internet Explorer.
# 
# If you enable this setting, non-enterprise content embedded on enterprise sites are stopped from opening in Internet Explorer or Microsoft Edge outside of Microsoft Defender Application Guard.
# 
# If you disable or don't configure this setting, non-enterprise sites can open outside of the Microsoft Defender Application Guard container, directly in Internet Explorer and Microsoft Edge.
#         
Prevent enterprise websites from loading non-enterprise content in Microsoft Edge and Internet Explorer:
  lgpo.set:
  - name: AppHVSI_BlockNonEnterpriseContentConfig
  - setting: Enabled
  - policy_class: Machine

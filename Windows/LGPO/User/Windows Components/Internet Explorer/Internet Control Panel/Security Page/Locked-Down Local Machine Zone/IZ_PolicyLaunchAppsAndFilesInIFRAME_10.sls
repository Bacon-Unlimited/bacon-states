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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Local Machine Zone\IZ_PolicyLaunchAppsAndFilesInIFRAME_10.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether applications may be run and files may be downloaded from an IFRAME reference in the HTML of the pages in this zone.
# 
# If you enable this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.
# 
# If you disable this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.
# 
# If you do not configure this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone without user intervention.
Launching applications and files in an IFRAME:
  lgpo.set:
  - name: IZ_PolicyLaunchAppsAndFilesInIFRAME_10
  - setting:
      IZ_Partname1804: enum-placeholder
  - policy_class: User

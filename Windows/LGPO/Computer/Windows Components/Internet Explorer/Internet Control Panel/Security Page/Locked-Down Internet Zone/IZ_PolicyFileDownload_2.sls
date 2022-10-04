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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Internet Zone\IZ_PolicyFileDownload_2.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether file downloads are permitted from the zone. This option is determined by the zone of the page with the link causing the download, not the zone from which the file is delivered.
# 
# If you enable this policy setting, files can be downloaded from the zone.
# 
# If you disable this policy setting, files are prevented from being downloaded from the zone.
# 
#  If you do not configure this policy setting, files can be downloaded from the zone.
Allow file downloads:
  lgpo.set:
  - name: IZ_PolicyFileDownload_2
  - setting:
      IZ_Partname1803: enum-placeholder
  - policy_class: Machine

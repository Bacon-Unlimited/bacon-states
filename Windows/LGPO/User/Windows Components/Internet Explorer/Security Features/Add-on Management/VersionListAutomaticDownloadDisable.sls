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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Add-on Management\VersionListAutomaticDownloadDisable.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This setting determines whether IE automatically downloads updated versions of Microsofts VersionList.XML. IE uses this file to determine whether an ActiveX control should be stopped from loading.
# 
# If you enable this setting, IE stops downloading updated versions of VersionList.XML. Turning off this automatic download breaks the out-of-date ActiveX control blocking feature by not letting the version list update with newly outdated controls, potentially compromising the security of your computer.
# 
# If you disable or don't configure this setting, IE continues to download updated versions of VersionList.XML.
# 
# For more information, see "Out-of-date ActiveX control blocking" in the Internet Explorer TechNet library.
Turn off automatic download of the ActiveX VersionList:
  lgpo.set:
  - name: VersionListAutomaticDownloadDisable
  - setting: Enabled
  - policy_class: User
